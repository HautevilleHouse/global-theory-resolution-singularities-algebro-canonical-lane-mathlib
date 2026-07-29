import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure NormalCrossingsPackage where
  simpleNormalCrossings : Prop
  sncResolutionExists : Prop
  embeddedResolution : Prop
  smoothCenter : Prop

structure NormalCrossingsEvidence (N : NormalCrossingsPackage) where
  simpleNormalCrossingsClosed : N.simpleNormalCrossings
  sncResolutionExistsClosed : N.sncResolutionExists
  embeddedResolutionClosed : N.embeddedResolution
  smoothCenterClosed : N.smoothCenter

def NormalCrossingsClosed (N : NormalCrossingsPackage) : Prop :=
  N.simpleNormalCrossings ∧ N.sncResolutionExists ∧ N.embeddedResolution ∧ N.smoothCenter

theorem normal_crossings_closed_from_evidence (N : NormalCrossingsPackage) (E : NormalCrossingsEvidence N) :
    NormalCrossingsClosed N := by
  exact And.intro E.simpleNormalCrossingsClosed (And.intro E.sncResolutionExistsClosed (And.intro E.embeddedResolutionClosed E.smoothCenterClosed))

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse