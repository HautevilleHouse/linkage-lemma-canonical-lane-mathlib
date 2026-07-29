import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure DecompositionPackage (L : LemmaComponent) where
  componentList : List LemmaComponent
  decompositionValid : Prop
  linkagePreserved : Prop
  closureUnderLinkage : Prop
  decompositionValidClosed : decompositionValid
  linkagePreservedClosed : linkagePreserved
  closureUnderLinkageClosed : closureUnderLinkage

def DecompositionClosed (L : LemmaComponent) (D : DecompositionPackage L) : Prop :=
  D.decompositionValid ∧ D.linkagePreserved ∧ D.closureUnderLinkage

theorem decompositionClosed_from_evidence (L : LemmaComponent) (D : DecompositionPackage L) :
    DecompositionClosed L D := by
  exact And.intro D.decompositionValidClosed (And.intro D.linkagePreservedClosed D.closureUnderLinkageClosed)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse