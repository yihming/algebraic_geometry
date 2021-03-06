///////////////////////////////////////////////////////////////////////////////
info="
AUTHOR:  Yao Sun (sunyao@amss.ac.cn)
OVERVIEW:
In Kapur et al (ISSAC, 2010), a new method for computing a comprehensive 
Gr\"obner system of a parameterized polynomial system was proposed 
and its efficiency over other known methods was effectively demonstrated. 
Based on those insights, a new approach is proposed for computing a 
comprehensive Gr\"obner basis of a parameterized polynomial system.  
The key new idea is not to simplify a polynomial under various 
specialization of its parameters, but rather keep track in the polynomial, 
of the power products whose coefficients vanish; this is achieved by 
partitioning the polynomial into two parts--\emph{nonzero} part and 
\emph{zero} part for the specialization under consideration. During 
the computation of a comprehensive Gr\"obner system, for a particular 
branch corresponding to a specialization of parameter values, nonzero 
parts of the polynomials dictate the computation, i.e., computing 
S-polynomials as well as for simplifying a polynomial with respect to other 
polynomials; but the manipulations on the whole polynomials (including 
their zero parts) are also performed. Gr\"obner basis computations on such 
pairs of polynomials can also be viewed as Gr\"obner basis computations 
on a module. Once a comprehensive Gr\"obner system is generated, both 
nonzero and zero parts of the  polynomials are collected from every branch 
and the result is a \emph{ faithful} comprehensive Gr\"obner basis, to mean 
that every polynomial in a comprehensive Gr\"obner basis belongs to the 
ideal of the original parameterized polynomial system. This technique 
should be applicable to other algorithms for computing a comprehensive 
Gr\"obner system as well, thus producing both a comprehensive Gr\"obner 
system as well as a faithful comprehensive Gr\"obner basis of a 
parameterized polynomial system simultaneously. The approach is exhibited 
by adapting the recently proposed method for computing a comprehensive 
Gr\"obner system in (ISSAC, 2010) for computing a comprehensive Gr\"obner 
basis. The timings on a collection of examples demonstrate that this new 
algorithm for computing comprehensive Gr\"obner bases has better performance 
than other existing algorithms.

For more details, please \"Computing Comprehensive Gr\"obner Systems and 
Comprehensive Gr\"obner Bases Simultaneously\" by Deepak Kapur, Yao Sun 
and Dingkang Wang, ISSAC 2011.

PROCEDURES:
  cgs(polys,vars,pars,R1,R2);     comprehensive Groebner systems

KEYWORDS: comprehensive Gr\"obner system, comprehensive Gr\"obner basis
";

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

static proc Add_Aux_Polys(ideal polys)
{
  if (size(polys) == 0)
  {
    return(polys);
  }

  ideal MPolys;

  for (int i = 1; i <= size(polys); i++)
  {
    MPolys = MPolys + (polys[i] * Auxiliary[1]);
  }

  return(MPolys);
}

static proc Add_Aux_Equ(ideal Equ)
{
  if (size(Equ) == 0)
  {
    return(Equ);
  }

  ideal MEqu;

  for (int i = 1; i <= size(Equ); i++)
  {
    MEqu = MEqu + (Equ[i] * Auxiliary[1] - Equ[i] * Auxiliary[2]);
  }

  return(MEqu);
}


static proc Radical_Equ(ideal Equ)
{
  if (size(Equ) == 0)
  {
    return(Equ);
  }
  ideal SqrEqu; 
  list EquFactors;
  poly tempP;
  int i, j, flag;

  for (i = 1; i <= size(Equ); i++)
  {
    EquFactors = factorize(Equ[i], 2);

    flag = 0;
    for (j = 1; j <= size(EquFactors[2]); j++)
    {
      if (EquFactors[2][j] > 1)
      {
        flag = 1;
	break;
      }
    }
    if (flag)
    {
      tempP = 1;
      for (j = 1; j <= size(EquFactors[1]); j++)
      {
        tempP = tempP * EquFactors[1][j];
      }
      SqrEqu = SqrEqu + tempP;
    }
  }

  if (size(SqrEqu))
  {
    return(groebner(Equ + SqrEqu));
  }
  else
  {
    return(Equ);
  }
}


static proc Simplify_DisEqu(list DisEqu, ideal Equ)
{
  list newDisEqu;
  ideal DisFactors;
  poly tempP;
  int i, j, k, flag;


  for (i = 1; i <= size(DisEqu); i++)
  {
    DisFactors = factorize(DisEqu[i], 1);
    for (j = 1; j <= size(DisFactors); j++)
    {
      if (size(Equ))
      {
        tempP = reduce(DisFactors[j], Equ);
      }
      else
      {
        tempP = DisFactors[j];
      }
      
      if (leadmonom(tempP) != 1)
      {
	flag = 1;
	for (k = 1; k <= size(newDisEqu); k++)
	{
	  if (newDisEqu[k] == tempP)
	  {
	    flag = 0;
	    break;
	  }
	}
	if (flag)
	{
	  newDisEqu = newDisEqu + list(tempP);
	}
      }
    }
  }

  return(newDisEqu);
}

static proc Simplify_Equ(ideal Equ, list DisEqu)
{
  if (size(Equ) == 0)
  {
    return(Equ);
  }
  if (Equ[1] == 1)
  {
    return(Equ);
  }
  
  ideal newEqu, tempGB;
  int i, j;

  newEqu = Equ;

  for (i = 1; i <= size(DisEqu); i++)
  {
    if ((deg(DisEqu[i]) > 3) || (size(DisEqu[i]) > 5))
    {
      i++;
      continue;
    }

    tempGB = groebner(newEqu + (DisEqu[i] * VMinDPoly - 1));
    if (tempGB[1] == 1)
    {
      return(ideal(1)); 
    }

    newEqu = ideal();
    for (j = 1; j <= size(tempGB); j++)
    {
      if (VMinDPoly > tempGB[j])
      {
        newEqu = newEqu + tempGB[j];
      }
    }
  }

  return(groebner(newEqu));

}


//Checks=[total, tri-check, 0dim-check, c-check, i-check, gen-check];
static proc Check_Consistence_CGB(ideal Equ, list DisEqu)
{

  Checks[1] = Checks[1] + 1;

  //trivial checks
  if (!size(Equ))
  {
    Checks[2] = Checks[2] + 1;
    return(1);
  }

  if (Equ[1] == 1)
  {
    Checks[2] = Checks[2] + 1;
    return(0);
  }

  if (!size(DisEqu))
  {
    Checks[2] = Checks[2] + 1;
    return(1);
  }


  //normal form
  poly DE = 1;
  int i, j;

  for (i = 1; i <= size(DisEqu); i++)
  {
    DE = reduce(DE * DisEqu[i], Equ);
    if (DE == 0)
    {
      Checks[2] = Checks[2] + 1;
      return(0);
    }
  }


  //c-check
  int ctimes = 1;
  ideal LM;

  for (i = 1; i <= size(Equ); i++)
  {
    LM = LM + leadmonom(Equ[i]);
  }
  LM = groebner(LM);
  intvec Indvec = indepSet(LM);

  list Indvar;
  for (i = size(Variables) + 3; i <= size(Indvec); i++)
  {
    if (Indvec[i] != 0)
    {
      Indvar = Indvar + list(Parameters[i - size(Variables)-2]);
    }
  }

  ideal tempGB, Spe;

  if (size(Indvar))
  {
    for (i = 1; i <= ctimes; i++)
    {
      for (j = 1; j <= size(Indvar); j++)
      {
        Spe = Spe + (Indvar[j] - random(-50, 50));
      }

      tempGB = groebner(Equ + Spe + (DE * VMinDPoly - 1));

      if (tempGB[1] != 1)
      {
        Checks[4] = Checks[4] + 1;
	return(1);
      }
    }
  }
  
  //i-check
  int itimes = 3;
  poly newDE = DE;
  poly res, tempDE;
  tempGB = groebner(Equ);
  for (i = 1; i <= itimes; i++)
  {
    if (size(newDE) > 20)
    {
      break;
    }
    
    res = 0;
    tempDE = newDE;
    for (j = 1; j <= size(newDE); j++)
    {
      res = res + reduce(lead(tempDE) * newDE, tempGB);
      tempDE = tempDE - lead(tempDE);
    }

    if (res == 0)
    {
      Checks[5] = Checks[5] + 1;
      return(0);
    }
    newDE = res;
  }


  //general check
  tempGB = groebner(Equ + (DE * VMinDPoly - 1));

  if (tempGB[1] == 1)
  {
    Checks[6] = Checks[6] + 1;
    return(0);
  }
  else
  {
    Checks[6] = Checks[6] + 1;
    return(1);
  }

}


static proc Trivial_Poly(ideal polys)
{
  poly tripoly = 0;

  if (polys[1] == Auxiliary[2])
  {
    tripoly = Auxiliary[2];
    return(tripoly);
  }

  for (int i = 1; i <= size(polys); i++)
  {
    if (Auxiliary[1] == leadmonom(polys[i]))
    {
      tripoly = polys[i];
      break;
    }
  }

  return(tripoly);
}


static proc Remove_Aux(poly mp);
{
  ideal SpeAux = groebner(ideal(Auxiliary[1] - 1, Auxiliary[2] - 1));

  poly newmp = reduce(mp, SpeAux);

  return(newmp);
}


static proc Divides_MPolys(ideal polys)
{
  ideal AllVarPolys;
  list Gr, MGr;
  ideal U = groebner(ideal(Auxiliary[1] - 1, Auxiliary[2]));
  int i;
  poly UV = Auxiliary[1] * Auxiliary[2];

  for (i = 1; i <= size(polys); i++)
  {
    if (UV == polys[i])
    {
      i++;
      continue;
    }
    
    if (Auxiliary[1] <= polys[i])
    {
      if (Auxiliary[1] * VMinDPoly > polys[i])
      {
        MGr = MGr + list(polys[i]);
	Gr = Gr + list(reduce(polys[i], U));
      }
      else
      {
        AllVarPolys = AllVarPolys + polys[i];
      }
    }
  }

  return(AllVarPolys, Gr, MGr);
}





//1: c1>c2
static proc Bigger(list c1 , list c2)
{
  int i, flag;

  if (c1[1] > c2[1])
  {
    return(1);
  }

  if (c1[1] < c2[1])
  {
    return(0);
  }

  if (size(c1[2]) > size(c2[2]))
  {
    return(1);
  }

  return(0);
}



static proc Get_MDBasis(ideal GB)
{
  setring(RingVar);
  ideal newGB = imap(RingAll, GB);
  list MDBasis, MList, LCoefs;
  poly P, mon;
  int i, j;


  for (i = 1; i <= size(newGB); i++)
  {
    P = newGB[i];
    mon = leadmonom(P);

    for (j = 1; j <= size(MList); j++)
    {
      if (mon/MList[j] > 1)
      {
        mon = 0;
        break;
      }
    }
    if (mon == 0)
    {
      i++;
      continue;
    }
    for (j = i + 1; j <= size(newGB); j++)
    {
      if (mon/leadmonom(newGB[j]) > 1)
      {
        mon = 0;
         break;
      }
    }
    if (mon == 0)
    {
      i ++;
      continue;
    }

    MDBasis = MDBasis + list(P);
    MList = MList + list(mon);
    LCoefs = LCoefs + list(leadcoef(P));
  }

  int MDBasisLength = size(MDBasis);
  int MListLength = size(MList);
  int LCoefsLength = size(LCoefs);

  setring(RingAll);
  if (MDBasisLength)
  {
    list MDBasis =  imap(RingVar, MDBasis);
  }
  if (MListLength)
  {
    list MList =  imap(RingVar, MList);
  }

  if (LCoefsLength)
  {
    list LCoefs = imap(RingVar, LCoefs);
  }


  list tempFactors;
  ideal CoefLsub;
  poly tempP;

  for (i = 1; i <= size(LCoefs); i++)
  {
    CoefLsub = factorize(LCoefs[i], 1);
    tempP = CoefLsub[1];
    for (j = 2; j <= size(CoefLsub); j++)
    {
      if (CoefLsub[j] > tempP)
      {
        tempP = CoefLsub[j];
      }
    }
    tempFactors = tempFactors + list(list(tempP, CoefLsub));
  }

  int k, flag;
  list newMDBasis, LeadCoeffFactors, tempM;

  for (i = 1; i <= size(tempFactors); i++)
  {
    flag = 0;
    for (j = 1; j <= size(tempM); j++)
    {
      if (tempM[j] == MList[i])
      {
        flag = 1;
	break;
      }
    }
    if (flag)
    {
      i++;
      continue;
    }
    
    flag = 1;
    for (j = i + 1; j <= size(tempFactors); j++)
    {
      if ((MList[i] == MList[j]) && (Bigger(tempFactors[i], tempFactors[j]))) 
      {
        flag = 0;
	break;
      }
    }
    if (flag)
    {
      tempM = tempM + list(MList[i]);
      newMDBasis = newMDBasis + list(MDBasis[i]);
      
      for (j = 1; j <= size(tempFactors[i][2]); j++)
      {
        if (tempFactors[i][2][j] == 1)
        {
	  j++;
	  continue;
        }
        
        flag = 1;
        for (k = 1; k <= size(LeadCoeffFactors); k++)
        {
	  if (LeadCoeffFactors[k] == tempFactors[i][2][j])
	  {
	    flag = 0;
	    break;
	  }
	}
	if (flag)
	{
	  LeadCoeffFactors = LeadCoeffFactors + list(tempFactors[i][2][j]);
	}
      }
    }
  }
  
  return(newMDBasis, LeadCoeffFactors);
}




static proc cgb_mod_main(ideal MPolys, ideal Equ, list DisEqu)
{
  ideal GB, AllVarPolys, CGB;
  list Gr, MGr, MDBasis, LeadCoeffFactors;
  poly tempP, H;
  int i;


  ideal newEqu = groebner(Equ);
  newEqu = Radical_Equ(newEqu);
  list newDisEqu = Simplify_DisEqu(DisEqu, newEqu);
  newEqu = Simplify_Equ(newEqu, newDisEqu);

  //check consistence of (Equ, DisEqu)
  if (!Check_Consistence_CGB(newEqu, newDisEqu))
  {
    return(ideal());
  }

  ideal newMEqu = Add_Aux_Equ(newEqu);

  //compute the full elinimating Grobner basis
  GB = groebner(MPolys + newMEqu + ideal(Auxiliary[1] * Auxiliary[2]));

  tempP = Trivial_Poly(GB);

  if (tempP != 0)
  {
    Modcgs = Modcgs + list(list(newEqu, newDisEqu, list(tempP)));
    return(ideal(Remove_Aux(tempP)));
  }

  //get minimal Dickson basis
  AllVarPolys, Gr, MGr = Divides_MPolys(GB);
  MDBasis, LeadCoeffFactors = Get_MDBasis(AllVarPolys);


  //trivial branches
  for (i = 1; i <= size(Gr); i++)
  {
    tempP = reduce(Gr[i], newEqu);
    if (tempP == 0)
    {
      i++;
      continue;
    }

    if (Check_Consistence_CGB(newEqu, newDisEqu + list(tempP)))
    {
      Modcgs = Modcgs + list(list(newEqu, newDisEqu + list(tempP), list(MGr[i])));
      CGB = CGB + Remove_Aux(MGr[i]);
    }
    newEqu = groebner(newEqu + tempP);
  }

  //major branch
  if (Check_Consistence_CGB(newEqu, newDisEqu + LeadCoeffFactors))
  {

    Modcgs = Modcgs + list(list(newEqu, newDisEqu + LeadCoeffFactors, MDBasis));
    for (i = 1; i <= size(MDBasis); i++)
    {
      CGB = CGB + Remove_Aux(MDBasis[i]);
    }
  }

  //other branches
  list tempDisEqu;
  for (i = 1; i <= size(LeadCoeffFactors); i++)
  {
    CGB = CGB + cgb_mod_main(AllVarPolys, newEqu + LeadCoeffFactors[i], newDisEqu + tempDisEqu);
    tempDisEqu = tempDisEqu + list(LeadCoeffFactors[i]);
  }

  return(CGB);
}


proc cgb_mod(ideal Polys, ideal Equ, list DisEqu, list Vars, list Paras, list Aux, RingAll, RingVar)
{
  list Variables = Vars;
  list Parameters = Paras;
  list Auxiliary = Aux;
  poly VMinDPoly = Vars[size(Vars)];
  list Checks = 0, 0, 0, 0, 0, 0;
  list Modcgs;
  export(Variables, Parameters, Auxiliary, VMinDPoly, Checks, Modcgs);

  export(RingAll, RingVar);
  setring(RingAll);

  ideal MPolys = Add_Aux_Polys(Polys);

  ideal G = cgb_mod_main(MPolys, Equ, DisEqu);

  print(newline+"number of checks: "+newline);
  print("trivial checks: "+string(Checks[2]));
  print("0-dim checks: "+string(Checks[3]));
  print("c-checks: "+string(Checks[4]));
  print("i-checks: "+string(Checks[5]));
  print("general checks: "+string(Checks[6]));
  print("total checks: "+string(Checks[1])+newline);

  keepring(RingAll);
  return(G, Modcgs);
}






proc StringCGB(ideal cgb)
{
  string Str = newline + "Comprehensive Groebner Basis: " + newline + newline;
  ideal Factors;
  int i, j;

  for (i = 1; i < size(cgb); i++)
  {
    Str = Str + string(cgb[i]) + "," + newline;
  }
  Str = Str + string(cgb[size(cgb)]) + "." + newline + newline;
  
  return(Str);
}


proc StringModCGS_mod(list modcgs)
{
  string Str = newline + "Module Comprehensive Groebner Systems: " + newline + newline;
  ideal Factors;
  ideal U = groebner(ideal(Auxiliary[1] - 1, Auxiliary[2]));
  ideal V = groebner(ideal(Auxiliary[1], Auxiliary[2] - 1));
  int i, j;

  for (i = 1; i <= size(modcgs); i++)
  {
    Str = Str + "Branch " + string(i) + ":" + newline + "constraints: ";
    for (j = 1; j <= size(modcgs[i][1]); j++)
    {
      if (modcgs[i][1][j] != 0)
      {
        Str = Str + string(modcgs[i][1][j]) + "=0,";
      }
    }
    for (j = 1; j <= size(modcgs[i][2]); j++)
    {
      if (modcgs[i][2][j] != 1)
      {
        Str = Str + string(modcgs[i][2][j]) + "!=0,";
      }
    }
    Str = Str + newline + "Module Groebner basis: " + newline;

    for (j = 1; j < size(modcgs[i][3]); j++)
    {
      Str = Str + "[" + string(reduce(modcgs[i][3][j], U)) 
        + " , " + string(reduce(modcgs[i][3][j], V)) + "]," + newline;
    }
    Str = Str + "[" + string(reduce(modcgs[i][3][size(modcgs[i][3])], U)) 
      + " , " + string(reduce(modcgs[i][3][size(modcgs[i][3])], V)) + "]." + newline + newline;
  }
  
  return(Str);
}


