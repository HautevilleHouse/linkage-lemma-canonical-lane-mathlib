import LinkageLemmaCanonicalLaneLean.FrobeniusCommutator

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure InvariantVectorFieldPackage {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} (F : FrobeniusCommutatorPackage G) where
  vectorField : Type v
  flowMap : Type w
  invariantUnderDistribution : Prop
  tangentSpaceCompatibility : Prop

def InvariantVectorFieldClosed {M : Type u} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage} {F : FrobeniusCommutatorPackage G}
    (V : InvariantVectorFieldPackage F) : Prop :=
  V.invariantUnderDistribution ∧ V.tangentSpaceCompatibility

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse