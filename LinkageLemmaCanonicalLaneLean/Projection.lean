import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

def linkageProjection : Projection LinkageEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem linkage_projection_idempotent (x : LinkageEndgameState) :
    linkageProjection.toFun (linkageProjection.toFun x) = linkageProjection.toFun x := by
  exact linkageProjection.idempotent x

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse