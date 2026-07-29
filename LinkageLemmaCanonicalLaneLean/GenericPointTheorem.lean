import canonicalLaneMathlib.AdmissibleClass

/-!
# Generic Point Theorem Package
-/

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure GenericPointTheoremPackage where
  varietyX : Type
  functionField : Type
  genericPoint : Type
  fieldExtension : Prop
  transcendenceBasis : Type
  linkageLemmaHolds : Prop

structure GenericPointTheoremEvidence (G : GenericPointTheoremPackage) where
  varietyXClosed : G.varietyX ≠ Empty
  functionFieldClosed : G.functionField ≠ Empty
  genericPointClosed : G.genericPoint ≠ Empty
  fieldExtensionClosed : G.fieldExtension
  transcendenceBasisClosed : G.transcendenceBasis ≠ Empty
  linkageLemmaHoldsClosed : G.linkageLemmaHolds

def GenericPointTheoremClosed (G : GenericPointTheoremPackage) : Prop :=
  G.varietyX ≠ Empty ∧ G.functionField ≠ Empty ∧ G.genericPoint ≠ Empty ∧
  G.fieldExtension ∧ G.transcendenceBasis ≠ Empty ∧ G.linkageLemmaHolds

theorem generic_point_theorem_closed_from_evidence (G : GenericPointTheoremPackage) (E : GenericPointTheoremEvidence G) :
    GenericPointTheoremClosed G := by
  exact And.intro E.varietyXClosed
    (And.intro E.functionFieldClosed
      (And.intro E.genericPointClosed
        (And.intro E.fieldExtensionClosed
          (And.intro E.transcendenceBasisClosed E.linkageLemmaHoldsClosed))))

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse