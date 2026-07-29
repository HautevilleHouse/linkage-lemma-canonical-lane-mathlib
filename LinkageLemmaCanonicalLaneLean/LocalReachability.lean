import LinkageLemmaCanonicalLaneLean.TransversalityKernel

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LocalReachabilityPackage {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    (T : TransversalityKernelPackage L) where
  localPathSpace : Type v
  reachableSet : Prop
  localDiffeo : Prop
  pathLifting : Prop

def LocalReachabilityClosed {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    {T : TransversalityKernelPackage L} (R : LocalReachabilityPackage T) : Prop :=
  R.reachableSet ∧ R.localDiffeo ∧ R.pathLifting

theorem local_reachability_closed_from_evidence {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    {T : TransversalityKernelPackage L} (R : LocalReachabilityPackage T)
    (h1 : R.reachableSet) (h2 : R.localDiffeo) (h3 : R.pathLifting) :
    LocalReachabilityClosed R := by
  exact And.intro h1 (And.intro h2 h3)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse