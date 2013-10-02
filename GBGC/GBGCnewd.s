
///////////////////////////////////////////////////////////////////////////////

LIB "poly.lib";
LIB "matrix.lib";

///////////////////////////////operations on signature/////////////////////////////////

//POT order 
//1: aFi > bFj; 0: aFi = bFj; -1: aFi < bFj
static proc CompareSign1(poly a, int i, poly b, int j)
{
  if (i < j)
  {
    return(1);
  }
  if (i > j)
  {
    return(-1);
  }

  if (a > b)
  {
    return(1);
  }
  if (a < b)
  {
    return(-1);
  }
  return(0);
}

static proc CompareSign(poly a, int i, poly b, int j)
{
  poly Sa = a * InitialPolys[i];
  poly Sb = b * InitialPolys[j];

  if (Sa > Sb)
  {
    return(1);
  }
  if (Sa < Sb)
  {
    return(-1);
  }

  if (i < j)
  {
    return(1);
  }
  if (i > j)
  {
    return(-1);
  }

  return(0);
}


////////////////////////////////////criterion//////////////////////////////////////


//return the position of (u, f), 0 stands for "cannot be downgraded"
static proc GenRewritable(poly t, int pos)
{
  if (ActiveB[pos] == 0)
  {
    return(-1);
  }

  poly sign = t * SignatureB[pos];
  int ind = IndexB[pos];
  int i;

  for (i = 1; i <= size(SyzRule[ind]); i++)
  {
    if (sign/SyzRule[ind][i] != 0)
    {
      if (t == 1)
      {
        ActiveB[pos] = 0;
      }
      return(-1);
    }
  }

  for (i = size(Rule[ind]); i >= 1; i--)
  {
    if (Rule[ind][i] == pos)
    {
      return(0);
    }
    
    if (sign/SignatureB[Rule[ind][i]] != 0)
    {
      if (t == 1)
      {
        ActiveB[pos] = 0;
      }
      return(Rule[ind][i]);
    }
  }
  return(0);
}


static proc GenRewritable_Syz(poly t, int pos)
{
  poly sign = t * SignatureB[pos];
  int ind = IndexB[pos];
  int i;

  for (i = 1; i <= size(SyzRule[ind]); i++)
  {
    if (sign/SyzRule[ind][i] != 0)
    {
      if (t == 1)
      {
        ActiveB[pos] = 0;
      }
      return(-1);
    }
  }

  return(0);
}


//////////////////////////////////operations on CP/////////////////////////////////////


static proc InitCPSet()
{
  CPSet = list();

  for (int i = 1; i <= 20; i++)
  {
    CPSet = CPSet + list(list());
  }
  
}


static proc LeastDegCPSet()
{
  for (int i = 1; i <= 20; i++)
  {
    if (size(CPSet[i]))
    {
      return(i);
    }
  }
  return(0);
}

//cp = [bigsign, bigindex, coef1, mon1, pos1, coef2, mon2, pos2]
static proc AddCPSet(int i, int j)
{
  if ((ActiveB[i] == 0) || (ActiveB[j] == 0))
  {
    return();
  }

  poly LCM, LMi, Mu, LMj, Mv, Si, Sj;

  LMi = leadmonom(PolyB[i]);
  LMj = leadmonom(PolyB[j]);
  LCM = lcm(LMi, LMj);
  Mu = LCM/LMi;
  Mv = LCM/LMj;
  Si = Mu * SignatureB[i];
  Sj = Mv * SignatureB[j];

  list cp;
  int flag = CompareSign(Si, IndexB[i], Sj, IndexB[j]);

  if (flag == 0)
  {
    return();
  }

  if (GenRewritable_Syz(Mu, i) != 0 || GenRewritable_Syz(Mv, j) != 0)
  {
    return();
  }

  if (flag == 1)
  {
    cp = list(Si, IndexB[i], 1, Mu, i, leadcoef(PolyB[i])/leadcoef(PolyB[j]), Mv, j);
  }
  else
  {
    cp = list(Sj, IndexB[j], 1, Mv, j, leadcoef(PolyB[j])/leadcoef(PolyB[i]), Mu, i);
  }


  int k;
  list tempcp;
  for (k = 1; k <= size(CPSet[deg(LCM)]); k++)
  {
    tempcp = CPSet[deg(LCM)][k];
    flag = CompareSign(tempcp[1], tempcp[2], cp[1], cp[2]);

    if (!(flag == -1))
    {
      CPSet[deg(LCM)] = insert(CPSet[deg(LCM)], cp, k-1);
      return();
    }
    
  }
  CPSet[deg(LCM)] = CPSet[deg(LCM)] + list(cp);
}


static proc GetCPSet(int d)
{
  list cps = CPSet[d];
  CPSet[d] = list();

  return(cps);
}




///////////////////////////////////operations on B/////////////////////////////////////

static proc OutputB()
{
  string Str = newline + "The set B: " + newline + newline;
  int i;

  for (i = 1; i <= LengthB; i++)
  {
    Str = Str + "signature: " + string(SignatureB[i]) + " * F_" + string(IndexB[i]) + ", number in B: " + string(i) + newline + "poly: " + string(PolyB[i]) + newline + newline;
  }

  return(Str);
}

static proc AppendB(poly sign, int ind, poly p, int act)
{
  SignatureB = SignatureB + list(sign);
  IndexB = IndexB + list(ind);
  PolyB = PolyB + list(p);
  LeadmonB = LeadmonB + list(leadmonom(p));
  ActiveB = ActiveB + list(act);
  LengthB = LengthB + 1;

  UpdateRule(LengthB);
}


//////////////////////////////////partial order////////////////////////////////////


static proc UpdateRule(int pos)
{
  int ind = IndexB[pos];
  list IndList = Rule[ind];
  int i;

  for (i = size(IndList); i >= 1; i--)
  {
    if (PartialOrder_GVW(IndList[i], pos) == 1)
    {
      Rule[ind] = insert(IndList, pos, i);
      return();
    }
  }
  Rule[ind] = insert(IndList, pos);
}



//have the same index
//1: B[pos]>B[i], 0: not comparable, -1: B[pos]<B[i]
static proc PartialOrder_GVW(int pos, int i)
{
  if (pos == i)
  {
    return(0);
  }

  poly posp, ip;

  if (PolyB[pos] == 0)
  {
    return(-1);
  }
  else
  {
    if (PolyB[i] == 0)
    {
      return(1);
    }
    else
    {
      posp = LeadmonB[pos] * SignatureB[i];
      ip = LeadmonB[i] * SignatureB[pos];
      if (posp > ip)
      {
        return(1);
      }
      if (posp < ip)
      {
        return(-1);
      }

      if (pos < i)
      {
        return(1);
      }
      else
      {
        return(-1);
      }
    }
  }
}



/////////////////////////////////////reducible//////////////////////////////////////

//return [coef, mon, pos, gaoc]
static proc Reducible_F5s(poly sign, int ind, poly p)
{
  number c;
  poly lmp, u;
  int i, flag;

  lmp = leadmonom(p);

  for (i = 1; i <= LengthB; i++)
  {
    if (ActiveB[i] == 0)
    {
      i++;
      continue;
    }

    u = lmp/LeadmonB[i];
    if (u == 0)
    {
      i++;
      continue;
    }

    flag = CompareSign(sign, ind, u * SignatureB[i], IndexB[i]);

    if (flag == 1)
    {
      c = leadcoef(p)/leadcoef(PolyB[i]);
      return(c, u, i, 1);
    }
  }
  return(0, 0, 0, 0);
}


//return [coef, mon, pos, gaoc]
static proc Reducible_F5(poly sign, int ind, poly p)
{
  number c;
  poly lmp, u;
  int i, flag;

  lmp = leadmonom(p);

  for (i = 1; i <= LengthB; i++)
  {
    if (ActiveB[i] == 0)
    {
      i++;
      continue;
    }

    u = lmp/LeadmonB[i];
    if (u == 0)
    {
      i++;
      continue;
    }

    if (GenRewritable(u, i) != 0)
    {
      i++;
      continue;
    }

    flag = CompareSign(sign, ind, u * SignatureB[i], IndexB[i]);

    if (flag != 1)
    {
      i++;
      continue;
    }

    c = leadcoef(p)/leadcoef(PolyB[i]);
    return(c, u, i, 1);
  }
  return(0, 0, 0, 0);
}


/////////////////////////////////////general reduction//////////////////////////////////////

//return the number of new polys
static proc Reduction_Poly(list CPList)
{
  list cp; 
  number c, gaoc;
  poly sign, p, m;
  int i, j, ind, pos, NewPolys;

  for (i = 1; i <= size(CPList); i++)
  {
    //cp = [bigsign, bigindex, coef1, mon1, pos1, coef2, mon2, pos2]
    cp = CPList[i];

    if (GenRewritable(cp[4], cp[5]) != 0 || GenRewritable(cp[7], cp[8]) != 0)
    {
      i++;
      continue;
    }

    UsefulPair++;

    sign = cp[1];
    ind = cp[2];
    p = cp[3] * cp[4] * PolyB[cp[5]] - cp[6] * cp[7] * PolyB[cp[8]];

    c, m, pos, gaoc = Reducible_F5s(sign, ind, p);
    while (pos)
    {
      p = (p - c * m * PolyB[pos])/gaoc;
      if (p == 0)
      {
        break;
      }
      c, m, pos, gaoc = Reducible_F5s(sign, ind, p);
    }
    if (leadmonom(p) == 1)
    {
      return(-1);
    }

    if (p == 0)
    {
      ZPolys++;
      SyzRule[ind] = SyzRule[ind] + list(sign);
      print("0-poly!!!!!!!!!!!!!!!!!!");
    }
    else
    {
      AppendB(sign, ind, p, 1);
      NewPolys = NewPolys + 1;
/*
      //only for POT order
      for (j = 1; j < ind; j++)
      {
        SyzRule[j] = SyzRule[j] + list(LeadmonB[LengthB]);
      }*/
      
    }

  }
  
  return(NewPolys);
}


///////////////////////////////////post operations/////////////////////////////////////

static proc SimplifyPolyB()
{
  list NonRedB;
  int i, j, flag;

  //remove redundant polys
  for (i = 1; i <= LengthB; i++)
  {
    if (ActiveB[i])
    {
      flag = 0;
      for (j = 1; j <= size(NonRedB); j++)
      {
        if (LeadmonB[i]/leadmonom(NonRedB[j]) != 0)
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
      for (j = i + 1; j <= LengthB; j++)
      {
        if (ActiveB[j] == 0)
        {
	  j++;
	  continue;
        }

	if (LeadmonB[i]/LeadmonB[j] > 1)
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

      NonRedB = NonRedB + list(PolyB[i]/leadcoef(PolyB[i]));
    }
  }

  //inter reduce polys
  ideal tempB;
  poly tempP;

  for (i = 1; i <= size(NonRedB); i++)
  {
    tempB = ideal();
    for (j = 1; j <= size(NonRedB); j++)
    {
      if (i != j)
      {
        tempB = tempB + NonRedB[j];
      }
    }
    tempP = reduce(NonRedB[i], tempB);
    NonRedB[i] = tempP/leadcoef(tempP);
  }

  return(NonRedB);
}


proc VerifyGB(ideal Polys, list newGB)
{
  ideal TrueGB = groebner(Polys);
  ideal tempGB;
  int i;

  for (i = 1; i <= size(newGB); i++)
  {
    tempGB = tempGB + newGB[i];
  }

  //one side
  for (i = 1; i <= size(TrueGB); i++)
  {
    if (reduce(TrueGB[i], tempGB) != 0)
    {
      print("the Groebner bases are NOT identical !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      return();
    }
  }

  for (i = 1; i <= size(tempGB); i++)
  {
    if (reduce(tempGB[i], TrueGB) != 0)
    {
      print("the Groebner bases are NOT identical !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      return();
    }
  }

  print("the Groebner bases are IDENTICAL~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  
}



///////////////////////////////////main function////////////////////////////////////////







proc GBGC(ideal Polys, RingVar)
{
  //global variables
  list InitialPolys, SignatureB, IndexB, PolyB, LeadmonB, ActiveB, CPSet, PartialOrderMatrix, Rule, SyzRule;
  int i, j, LengthB;
  int TotalPair, UsefulPair, LengthSign, ZPolys;
  poly tempm;

  export(InitialPolys, SignatureB, IndexB, PolyB, LeadmonB, ActiveB, LengthB, CPSet, PartialOrderMatrix, Rule, SyzRule);

  export(TotalPair, UsefulPair, ZPolys);

  export(RingVar);
  setring(RingVar);

  //initialize
  LengthB = size(Polys);

  for (i = 1; i <= LengthB; i++)
  {
    InitialPolys = InitialPolys + list(Polys[i]);
    SignatureB = SignatureB + list(1);
    IndexB = IndexB + list(i);
    PolyB = PolyB + list(Polys[i]);

    tempm = leadmonom(Polys[i]);
    if (tempm == 1)
    {
      return(list(1));
    }
    LeadmonB = LeadmonB + list(tempm);
    if (tempm == 0)
    {
      LengthB = LengthB + 1;
      ActiveB = ActiveB + list(0);
    }
    else
    {
      ActiveB = ActiveB + list(1);
    }

    Rule = Rule + list(list(i));
    SyzRule = SyzRule + list(list());
  }

  //critical pairs
  InitCPSet();

  for (i = 1; i <= size(PolyB); i++)
  {
    for (j = i + 1; j <= size(PolyB); j++)
    {
      TotalPair++;
      AddCPSet(i, j);
    }
  }

  //add trivial syzygies
  for (i = 1; i <= size(InitialPolys); i++)
  {
    if (ActiveB[i] == 0)
    {
      i++;
      continue;
    }

    for (j = i + 1; j <= size(InitialPolys); j++)
    {
      if (ActiveB[j] == 0)
      {
        j++;
	continue;
      }
      
      SyzRule[i] = SyzRule[i] + list(LeadmonB[j]);
    }
  }

  //main loops
  int d = LeastDegCPSet();
  list CPdeg;
  int NewPolysNum;

  while (d)
  {
    CPdeg = GetCPSet(d);

    NewPolysNum = Reduction_Poly(CPdeg);


    if (NewPolysNum == -1)
    {
      return(list(1));
    }

    for (i = LengthB - NewPolysNum + 1; i <= LengthB; i++)
    {
      for (j = 1; j <= i - 1; j++)
      {
        TotalPair++;
	AddCPSet(i, j);
      }
    }

    d = LeastDegCPSet();
  }

  keepring(RingVar);

  for (i = 1; i <= size(SyzRule); i++)
  {
    LengthSign = LengthSign + size(SyzRule[i]);
  }
  

  print(newline + "total critial pairs: "+string(TotalPair) + newline);
  print("rejected critial pairs: "+string(TotalPair - UsefulPair) + newline);
  print("real computed critical pair: "+string(UsefulPair) + newline);
  print("0-polys: "+string(ZPolys) + newline);
  print("toal generators: "+string(LengthB + LengthSign) + newline);
  print("non-0 generators: "+string(LengthB) + newline);


  return(PolyB);
}

