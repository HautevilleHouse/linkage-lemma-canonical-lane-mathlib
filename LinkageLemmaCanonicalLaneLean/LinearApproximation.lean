import LinkageLemmaCanonicalLaneLean.InvariantVectorField

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinearApproximationPackage {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    (V : InvariantVectorFieldPackage F) where
  tangentMap : Type v
  linearizedFlow : Type w
  firstOrderExpansion : Prop
  derivativeBounded : Prop

def LinearApproximationClosed {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    {V : InvariantVectorFieldPackage F} (L : LinearApproximationPackage V) : Prop :=
  L.firstOrderExpansion ∧ L.derivativeBounded

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse