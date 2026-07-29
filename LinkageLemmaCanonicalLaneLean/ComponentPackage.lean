import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LemmaComponent where
  linkageId : String
  componentSpace : Type u
  topology : TopologicalSpace componentSpace
  isAdmissible : Prop
  conclusion : ComponentWitnessClosed this

def ComponentWitnessClosed (L : LemmaComponent) : Prop :=
  L.isAdmissible

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse