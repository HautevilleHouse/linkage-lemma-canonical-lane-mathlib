import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LemmaComponent
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComponentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse