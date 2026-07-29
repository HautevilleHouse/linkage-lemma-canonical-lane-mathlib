import LinkageLemmaCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure FrobeniusCommutatorPackage {M : Type u} [TopologicalSpace M] (G : RiemannianCurvaturePackage) where
  distribution : Type v
  vectorFields : Type w
  lieBracket : vectorFields → vectorFields → vectorFields
  involutiveCondition : Prop
  bracketClosure : Prop

def FrobeniusCommutatorClosed {M : Type u} [TopologicalSpace M] {G : RiemannianCurvaturePackage}
    (F : FrobeniusCommutatorPackage G) : Prop :=
  F.involutiveCondition ∧ F.bracketClosure

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse