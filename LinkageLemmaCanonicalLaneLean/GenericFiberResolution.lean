import HautevilleHouse.LinkageLemmaCanonicalLaneLean.FiberDimensionJump

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure GenericFiberResolution where
  linkageObject : LinkageAdmittedObject
  genericFiber : Type
  resolutionMap : Type
  birationalCondition : Prop
  fiberSmooth : Prop

def genericFiberResolutionClosed (R : GenericFiberResolution) : Prop :=
  R.birationalCondition ∧ R.fiberSmooth

structure GenericFiberResolutionEvidence (R : GenericFiberResolution) where
  birationalConditionClosed : R.birationalCondition
  fiberSmoothClosed : R.fiberSmooth

theorem generic_fiber_resolution_closed_from_evidence (R : GenericFiberResolution)
    (E : GenericFiberResolutionEvidence R) : genericFiberResolutionClosed R := by
  exact And.intro E.birationalConditionClosed E.fiberSmoothClosed

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse
