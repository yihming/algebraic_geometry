# Algebraic Geometry

## Polynomial

Implement Sturm's Theorem of computing the number of real roots within an interval bound of a univariate polynomial.

## MCCGB

Implementation of Minimal Canonical Comprehensive Gröbner Basis (MCCGB) algorithms:

* One first computes a Comprehensive Gröbner System with minimal number of segments, then construct a MCCGB from it.
* One directly computes a MCCGB from a given parametric multivariate polynomial system.

#### Implementation

* Written in [SINGULAR](https://www.singular.uni-kl.de/) (developed at technischer Universität Kaiserslautern), a computer algebra system for symbolic computation, which is the fastest one computing Gröbner bases.

I also plan to implement it using Python in SymPy, which is a light-weighted open-source symbolic computation algebra system used by industrial people.

## References

1. Deepak Kapur, and Yiming Yang, "An Algorithm to Check Whether a Basis of a Parametric Polynomial System is a Comprehensive Gröbner Basiss and the Associated Completion Algorithm." In _Proceedings of the 2015 ACM on International Symposium on Symbolic and Algebraic Computation_, pp. 243-250, ACM, 2015.

2. Deepak Kapur, and Yiming Yang. "An algorithm for computing a minimal comprehensive Gröbner basis of a parametric polynomial system." In _EACA_, vol. 2014, p.21, 2014.
