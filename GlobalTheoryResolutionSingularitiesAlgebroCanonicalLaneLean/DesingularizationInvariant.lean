import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure DesingularizationInvariantPackage where
  baseField : Type u
  singularVariety : Type v
  invariantType : Type w
  invariantDecreases : Prop
  resolutionByInvariant : Prop
  invariantWellDefined : Prop

structure DesingularizationInvariantEvidence (I : DesingularizationInvariantPackage) where
  invariantDecreasesClosed : I.invariantDecreases
  resolutionByInvariantClosed : I.resolutionByInvariant
  invariantWellDefinedClosed : I.invariantWellDefined

def DesingularizationInvariantClosed (I : DesingularizationInvariantPackage) : Prop :=
  I.invariantDecreases ∧ I.resolutionByInvariant ∧ I.invariantWellDefined

theorem desingularization_invariant_closed_from_evidence (I : DesingularizationInvariantPackage) (E : DesingularizationInvariantEvidence I) : DesingularizationInvariantClosed I := by
  exact And.intro E.invariantDecreasesClosed (And.intro E.resolutionByInvariantClosed E.invariantWellDefinedClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse