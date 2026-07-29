import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComponentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse