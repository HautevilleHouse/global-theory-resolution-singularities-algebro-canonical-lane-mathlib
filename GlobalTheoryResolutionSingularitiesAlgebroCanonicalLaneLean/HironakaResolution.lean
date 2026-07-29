import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure HironakaResolutionPackage where
  ambientScheme : Type u
  singularSubscheme : Type v
  embeddedResolution : Prop
  strongResolution : Prop
  resolutionExists : Prop
  resolutionMorphism : Type w
  resolutionSmooth : Prop
  exceptionalDivisorNormalCrossings : Prop

structure HironakaResolutionEvidence (H : HironakaResolutionPackage) where
  embeddedResolutionClosed : H.embeddedResolution
  strongResolutionClosed : H.strongResolution
  resolutionExistsClosed : H.resolutionExists
  resolutionSmoothClosed : H.resolutionSmooth
  exceptionalDivisorNormalCrossingsClosed : H.exceptionalDivisorNormalCrossings

def HironakaResolutionClosed (H : HironakaResolutionPackage) : Prop :=
  H.embeddedResolution ∧ H.strongResolution ∧ H.resolutionExists ∧ H.resolutionSmooth ∧ H.exceptionalDivisorNormalCrossings

theorem hironaka_resolution_closed_from_evidence (H : HironakaResolutionPackage) (E : HironakaResolutionEvidence H) : HironakaResolutionClosed H := by
  exact And.intro E.embeddedResolutionClosed (And.intro E.strongResolutionClosed (And.intro E.resolutionExistsClosed (And.intro E.resolutionSmoothClosed E.exceptionalDivisorNormalCrossingsClosed)))

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse