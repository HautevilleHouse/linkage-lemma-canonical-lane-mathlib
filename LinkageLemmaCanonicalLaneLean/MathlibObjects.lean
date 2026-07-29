import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinkageSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinkageAdmittedObject where
  space : LinkageSpace
  irreducibleVariety : Prop
  dimensionFinite : Prop
  genericPointModel : Type
  genericPointTopology : TopologicalSpace genericPointModel
  linkageClosed : Prop
  conclusion : linkageClosed

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.linkageClosed

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse