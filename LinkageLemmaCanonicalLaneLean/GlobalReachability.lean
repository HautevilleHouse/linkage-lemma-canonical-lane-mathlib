import LinkageLemmaCanonicalLaneLean.LocalReachability

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure GlobalReachabilityPackage {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    {T : TransversalityKernelPackage L} (R : LocalReachabilityPackage T) where
  globalExtension : Prop
  uniformBound : Prop
  connectedComponentCoverage : Prop

def GlobalReachabilityClosed {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    {T : TransversalityKernelPackage L} {R : LocalReachabilityPackage T}
    (Gpkg : GlobalReachabilityPackage R) : Prop :=
  Gpkg.globalExtension ∧ Gpkg.uniformBound ∧ Gpkg.connectedComponentCoverage

theorem global_reachability_closed_from_evidence {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} {L : LinearApproximationPackage V}
    {T : TransversalityKernelPackage L} {R : LocalReachabilityPackage T}
    (Gpkg : GlobalReachabilityPackage R)
    (h1 : Gpkg.globalExtension) (h2 : Gpkg.uniformBound) (h3 : Gpkg.connectedComponentCoverage) :
    GlobalReachabilityClosed Gpkg := by
  exact And.intro h1 (And.intro h2 h3)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse