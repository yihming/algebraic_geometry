""" Comprehensive Groebner Bases Algorithms. """

from __future__ import print_function, division

from sympy.polys.monomials import monomial_mul, monomial_lcm, monomial_divides, term_div
from sympy.polys.orderings import lex
from sympy.polys.polyerrors import DomainError
from sympy.polys.polyconfig import query
from sympy.polys.groebnertools import spoly, red_groebner, is_minimal, groebner_lcm
from sympy.core.symbol import Dummy
from sympy.core.compatibility import range

def cgb(seq, ring, method=None):
    if method is None:
        method = query('cgs_cgb')

    _cgb_methods = {
        'ksw1': _ksw1
        'ksw2': _ksw2
        'ss': _ss
    }

    try:
        _cgb = _cgb_methods[method]
    except KeyError:
        raise ValueError("'%s' is not a valid Comprehensive Groebner bases algorithm (valid are 'ksw1', 'ksw2' and 'ss')" % method)

    domain, orig = ring.domain, None

    if not domain.has_Field or not domain.has_assoc_Field:
        try:
            orig, ring = ring, ring.clone(domain=domain.get_field())
        except DomainError:
            raise DomainError("can't compute a Comprehensive Groebner basis over %s" % domain)
        else:
            seq = [s.set_ring(ring) for s in seq]

    G = _cgb(seq, ring)

    if orig is not None:
        G = [g.clear_denoms()[1].set_ring(orig) for g in G]

    return G
