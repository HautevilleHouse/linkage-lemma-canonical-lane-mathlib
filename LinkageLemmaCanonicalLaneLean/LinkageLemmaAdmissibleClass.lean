import HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinkageAdmittedObject where
  manifold : Type u
  loopSpace : Type v
  loopProductStructure : Prop
  homotopyEquivalenceToSphere : Prop
  conclusion : homotopyEquivalenceToSphere

structure AdmissibleClass where
  object : LinkageAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.homotopyEquivalenceToSphere) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse