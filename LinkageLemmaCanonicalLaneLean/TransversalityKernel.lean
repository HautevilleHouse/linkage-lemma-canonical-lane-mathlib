import LinkageLemmaCanonicalLaneLean.LinearApproximation

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure TransversalityKernelPackage {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} (L : LinearApproximationPackage V) where
  transverseSubspace : Type v
  kernelDimension : Nat
  transversalCondition : Prop
  stabilityUnderPerturbation : Prop

def TransversalityKernelClosed {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    (T : TransversalityKernelPackage L) : Prop :=
  T.transversalCondition ∧ T.stabilityUnderPerturbation

theorem transversality_kernel_closed_from_evidence {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    (T : TransversalityKernelPackage L)
    (h1 : T.transversalCondition) (h2 : T.stabilityUnderPerturbation) :
    TransversalityKernelClosed T := by
  exact And.intro h1 h2

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse