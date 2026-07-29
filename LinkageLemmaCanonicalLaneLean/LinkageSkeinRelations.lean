import HautevilleHouse.LinkageLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure SkeinRelationPackage where
  crossingResolution : Prop
  smoothingRelation : Prop
  connectSumDecomposition : Prop
  skeinModule : Type u

def SkeinRelationsClosed (S : SkeinRelationPackage) : Prop :=
  S.crossingResolution ∧ S.smoothingRelation ∧ S.connectSumDecomposition

theorem skein_relations_closed (S : SkeinRelationPackage) :
    SkeinRelationsClosed S := by
  exact And.intro S.crossingResolution (And.intro S.smoothingRelation S.connectSumDecomposition)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse