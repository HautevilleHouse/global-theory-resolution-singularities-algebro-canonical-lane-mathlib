import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure DesingularizationPackage where
  idealisticExponent : Prop
  resolutionFunction : Prop
  desingularizationMap : Prop
  smoothModel : Prop

structure DesingularizationEvidence (D : DesingularizationPackage) where
  idealisticExponentClosed : D.idealisticExponent
  resolutionFunctionClosed : D.resolutionFunction
  desingularizationMapClosed : D.desingularizationMap
  smoothModelClosed : D.smoothModel

def DesingularizationClosed (D : DesingularizationPackage) : Prop :=
  D.idealisticExponent ∧ D.resolutionFunction ∧ D.desingularizationMap ∧ D.smoothModel

theorem desingularization_closed_from_evidence (D : DesingularizationPackage) (E : DesingularizationEvidence D) :
    DesingularizationClosed D := by
  exact And.intro E.idealisticExponentClosed (And.intro E.resolutionFunctionClosed (And.intro E.desingularizationMapClosed E.smoothModelClosed))

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse