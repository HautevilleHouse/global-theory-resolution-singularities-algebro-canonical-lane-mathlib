import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure WhitneyConditionsPackage where
  stratumA : Set (Type u)
  stratumB : Set (Type u)
  whitneyA : Prop
  whitneyB : Prop
  regularityCondition : Prop

structure WhitneyConditionsEvidence (W : WhitneyConditionsPackage) where
  whitneyAClosed : W.whitneyA
  whitneyBClosed : W.whitneyB
  regularityClosed : W.regularityCondition

def WhitneyConditionsClosed (W : WhitneyConditionsPackage) : Prop :=
  W.whitneyA ∧ W.whitneyB ∧ W.regularityCondition

theorem whitney_conditions_closed_from_evidence (W : WhitneyConditionsPackage)
    (E : WhitneyConditionsEvidence W) : WhitneyConditionsClosed W := by
  exact And.intro E.whitneyAClosed (And.intro E.whitneyBClosed E.regularityClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse