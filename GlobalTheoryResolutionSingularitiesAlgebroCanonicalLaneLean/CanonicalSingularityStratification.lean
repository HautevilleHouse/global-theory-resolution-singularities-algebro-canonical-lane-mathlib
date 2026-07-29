import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure CanonicalSingularityStratificationPackage where
  resolvedVariety : Type u
  singularLocus : Type v
  strataDecomposition : Type w
  strataSmooth : Prop
  monomialRescalingData : Prop
  exceptionalDivisorNormalCrossings : Prop

structure CanonicalSingularityStratificationEvidence
    (S : CanonicalSingularityStratificationPackage) where
  strataSmoothClosed : S.strataSmooth
  monomialRescalingDataClosed : S.monomialRescalingData
  exceptionalDivisorNormalCrossingsClosed : S.exceptionalDivisorNormalCrossings

def CanonicalSingularityStratificationClosed
    (S : CanonicalSingularityStratificationPackage) : Prop :=
  S.strataSmooth ∧ S.monomialRescalingData ∧ S.exceptionalDivisorNormalCrossings

theorem canonical_singularity_stratification_closed_from_evidence
    (S : CanonicalSingularityStratificationPackage)
    (E : CanonicalSingularityStratificationEvidence S) :
    CanonicalSingularityStratificationClosed S := by
  exact And.intro E.strataSmoothClosed
    (And.intro E.monomialRescalingDataClosed E.exceptionalDivisorNormalCrossingsClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse