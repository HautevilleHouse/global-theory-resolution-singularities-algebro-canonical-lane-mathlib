import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure StratificationPackage where
  ambientVariety : Type u
  topology : TopologicalSpace ambientVariety
  smoothStructure : Prop
  closedIrreducibleSubsets : List (Set ambientVariety)
  purityCondition : Prop
  equisingularityStratum : Prop

structure StratificationEvidence (S : StratificationPackage) where
  smoothClosed : S.smoothStructure
  purityClosed : S.purityCondition
  equisingularityClosed : S.equisingularityStratum

def StratificationClosed (S : StratificationPackage) : Prop :=
  S.smoothStructure ∧ S.purityCondition ∧ S.equisingularityStratum

theorem stratification_closed_from_evidence (S : StratificationPackage)
    (E : StratificationEvidence S) : StratificationClosed S := by
  exact And.intro E.smoothClosed (And.intro E.purityClosed E.equisingularityClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse