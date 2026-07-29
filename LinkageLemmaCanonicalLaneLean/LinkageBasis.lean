import HautevilleHouse.LinkageLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinkageSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinkageAdmittedObject where
  space : LinkageSpace
  linkageClosed : Prop
  pivotMap : Prop
  genericFiber : Prop
  conclusion : linkageClosed

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.linkageClosed

structure LinkageBasisReticulation where
  baseScheme : Type
  pivotCover : List (Type → Prop)
  fiberDimensions : Nat → Nat
  genericityCondition : Prop

def linkageBasisReticulationClosed (L : LinkageBasisReticulation) : Prop :=
  L.genericityCondition

theorem linkage_reticulation_base_condition (L : LinkageBasisReticulation) (h : L.genericityCondition) :
  linkageBasisReticulationClosed L := h

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse
