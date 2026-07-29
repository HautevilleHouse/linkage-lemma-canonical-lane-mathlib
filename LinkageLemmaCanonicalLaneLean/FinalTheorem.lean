import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

def ConstrainedLinkageLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem linkage_lemma_endgame (A : AdmissibleClass) :
    ConstrainedLinkageLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse