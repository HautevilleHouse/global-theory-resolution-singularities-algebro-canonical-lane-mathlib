import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SingularityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse