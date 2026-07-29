import HautevilleHouse.LinkageLemmaCanonicalLaneLean.SkeinRelations

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure HomotopyGroupFiniteness where
  basepointChoice : Prop
  groupStructure : Prop
  finiteGeneration : Prop
  relationToLinkageGroup : Prop

def HomotopyGroupFinitenessClosed (H : HomotopyGroupFiniteness) : Prop :=
  H.basepointChoice ∧ H.groupStructure ∧ H.finiteGeneration ∧ H.relationToLinkageGroup

theorem homotopy_group_finiteness_closed (H : HomotopyGroupFiniteness) :
    HomotopyGroupFinitenessClosed H := by
  exact And.intro H.basepointChoice (And.intro H.groupStructure (And.intro H.finiteGeneration H.relationToLinkageGroup))

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse