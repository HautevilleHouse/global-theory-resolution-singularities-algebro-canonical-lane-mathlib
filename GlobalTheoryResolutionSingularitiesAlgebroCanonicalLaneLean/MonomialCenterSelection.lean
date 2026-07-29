import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure MonomialCenterSelectionPackage where
  coefficientBody : Type u
  monomialSupport : Type v
  centerOrder : Type w
  maximalContactElement : Prop
  invariantDecreasing : Prop
  terminationGuaranteed : Prop

structure MonomialCenterSelectionEvidence
    (M : MonomialCenterSelectionPackage) where
  maximalContactElementClosed : M.maximalContactElement
  invariantDecreasingClosed : M.invariantDecreasing
  terminationGuaranteedClosed : M.terminationGuaranteed

def MonomialCenterSelectionClosed (M : MonomialCenterSelectionPackage) : Prop :=
  M.maximalContactElement ∧ M.invariantDecreasing ∧ M.terminationGuaranteed

theorem monomial_center_selection_closed_from_evidence
    (M : MonomialCenterSelectionPackage)
    (E : MonomialCenterSelectionEvidence M) : MonomialCenterSelectionClosed M := by
  exact And.intro E.maximalContactElementClosed
    (And.intro E.invariantDecreasingClosed E.terminationGuaranteedClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse