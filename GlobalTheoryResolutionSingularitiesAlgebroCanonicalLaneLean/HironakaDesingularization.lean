import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure HironakaDesingularizationPackage where
  ambientScheme : Type u
  idealSheaf : Type v
  principalizationMap : Type w
  admissibleBlowupSequence : Prop
  resolutionFinal : Prop
  functorialityRespected : Prop

structure HironakaDesingularizationEvidence
    (H : HironakaDesingularizationPackage) where
  admissibleBlowupSequenceClosed : H.admissibleBlowupSequence
  resolutionFinalClosed : H.resolutionFinal
  functorialityRespectedClosed : H.functorialityRespected

def HironakaDesingularizationClosed (H : HironakaDesingularizationPackage) : Prop :=
  H.admissibleBlowupSequence ∧ H.resolutionFinal ∧ H.functorialityRespected

theorem hironaka_desingularization_closed_from_evidence
    (H : HironakaDesingularizationPackage)
    (E : HironakaDesingularizationEvidence H) : HironakaDesingularizationClosed H := by
  exact And.intro E.admissibleBlowupSequenceClosed
    (And.intro E.resolutionFinalClosed E.functorialityRespectedClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse