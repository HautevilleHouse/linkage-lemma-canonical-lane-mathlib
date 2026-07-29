import HautevilleHouse.LinkageLemmaCanonicalLaneLean.PivotTranslation

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure FiberDimensionJump where
  linkageObject : LinkageAdmittedObject
  fiberDimension : Nat → Nat
  jumpLocations : Set Nat
  jumpCondition : Prop
  fiberResolved : Prop

structure FiberDimensionJumpEvidence (J : FiberDimensionJump) where
  jumpConditionClosed : J.jumpCondition
  fiberResolvedClosed : J.fiberResolved

def FiberDimensionJumpClosed (J : FiberDimensionJump) : Prop :=
  J.jumpCondition ∧ J.fiberResolved

theorem fiber_dimension_jump_closed_from_evidence (J : FiberDimensionJump)
    (E : FiberDimensionJumpEvidence J) : FiberDimensionJumpClosed J := by
  exact And.intro E.jumpConditionClosed E.fiberResolvedClosed

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse
