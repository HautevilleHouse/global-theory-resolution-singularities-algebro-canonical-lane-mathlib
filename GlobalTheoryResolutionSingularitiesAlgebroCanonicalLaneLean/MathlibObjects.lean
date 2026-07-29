import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure SingularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SingularityAdmittedObject where
  space : SingularitySpace
  resolutionExists : Prop
  exceptionalDivisors : Prop
  logResolution : Prop
  conclusion : logResolution

def SingularityWitnessClosed (O : SingularityAdmittedObject) : Prop :=
  O.logResolution

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse