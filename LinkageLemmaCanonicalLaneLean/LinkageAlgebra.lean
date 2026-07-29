import canonicalLaneMathlib.AdmissibleClass

/-!
# Linkage Algebra Package
-/

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinkageAlgebraPackage where
  field : Type
  polynomialRing : Type
  rationalFunctionField : Type
  vectorSpaceDimension : ℕ
  algebraicClosure : Prop
  transcendenceDegree : ℕ

structure LinkageAlgebraEvidence (L : LinkageAlgebraPackage) where
  fieldClosed : L.field ≠ Empty
  polynomialRingClosed : L.polynomialRing ≠ Empty
  rationalFunctionFieldClosed : L.rationalFunctionField ≠ Empty
  vectorSpaceDimensionClosed : L.vectorSpaceDimension = 2
  algebraicClosureClosed : L.algebraicClosure

def LinkageAlgebraClosed (L : LinkageAlgebraPackage) : Prop :=
  L.field ≠ Empty ∧ L.polynomialRing ≠ Empty ∧ L.rationalFunctionField ≠ Empty ∧
  L.vectorSpaceDimension = 2 ∧ L.algebraicClosure

theorem linkage_algebra_closed_from_evidence (L : LinkageAlgebraPackage) (E : LinkageAlgebraEvidence L) :
    LinkageAlgebraClosed L := by
  exact And.intro E.fieldClosed
    (And.intro E.polynomialRingClosed
      (And.intro E.rationalFunctionFieldClosed
        (And.intro E.vectorSpaceDimensionClosed E.algebraicClosureClosed)))

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse