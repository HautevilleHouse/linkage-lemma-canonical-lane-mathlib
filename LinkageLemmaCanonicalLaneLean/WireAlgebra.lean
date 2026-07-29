import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure WireAlgebraPackage where
  linkGroup : Type u
  crossingOperation : linkGroup → linkGroup → linkGroup
  invertible : (∀ a, crossingOperation a a = 1) ∧ (∀ a, crossingOperation a 1 = a) ∧ (∀ a b, crossingOperation (crossingOperation a b) b = a)
  associativity : ∀ a b c, crossingOperation a (crossingOperation b c) = crossingOperation (crossingOperation a b) c

def WireAlgebraClosed (W : WireAlgebraPackage) : Prop :=
  W.invertible.1 ∧ W.invertible.2.1 ∧ W.invertible.2.2 ∧ W.associativity

theorem wire_algebra_closed (W : WireAlgebraPackage) : WireAlgebraClosed W := by
  exact And.intro W.invertible.1 (And.intro W.invertible.2.1 (And.intro W.invertible.2.2 W.associativity))

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse