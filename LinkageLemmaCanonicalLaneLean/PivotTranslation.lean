import HautevilleHouse.LinkageLemmaCanonicalLaneLean.LinkageBasis

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure PivotTranslation where
  source : LinkageBasisReticulation
  target : LinkageBasisReticulation
  pivotMap : Type
  compatibility : Prop
  isomorphismProp : Prop

def pivotTranslationClosed (T : PivotTranslation) : Prop :=
  T.compatibility ∧ T.isomorphismProp

structure PivotTranslationEvidence (T : PivotTranslation) where
  compatibilityClosed : T.compatibility
  isomorphismPropClosed : T.isomorphismProp

theorem pivot_translation_closed_from_evidence (T : PivotTranslation)
    (E : PivotTranslationEvidence T) : pivotTranslationClosed T := by
  exact And.intro E.compatibilityClosed E.isomorphismPropClosed

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse
