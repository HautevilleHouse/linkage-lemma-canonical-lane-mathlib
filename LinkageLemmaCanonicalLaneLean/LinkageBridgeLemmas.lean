import HautevilleHouse.LinkageLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.homotopyEquivalenceToSphere

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse