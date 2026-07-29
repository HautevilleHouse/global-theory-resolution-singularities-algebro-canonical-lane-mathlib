import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure ZariskiTangentConePackage where
  localRing : Type u
  maximalIdeal : Type v
  gradedAssociatedRing : Type w
  tangentConeTopology : Prop
  embeddingDimension : Nat
  tangentConeReduced : Prop

structure ZariskiTangentConeEvidence (Z : ZariskiTangentConePackage) where
  tangentConeTopologyClosed : Z.tangentConeTopology
  embeddingDimensionComputed : Z.embeddingDimension = 0 → False
  tangentConeReducedClosed : Z.tangentConeReduced

def ZariskiTangentConeClosed (Z : ZariskiTangentConePackage) : Prop :=
  Z.tangentConeTopology ∧ (Z.embeddingDimension = 0 → False) ∧ Z.tangentConeReduced

theorem zariski_tangent_cone_closed_from_evidence (Z : ZariskiTangentConePackage) (E : ZariskiTangentConeEvidence Z) : ZariskiTangentConeClosed Z := by
  exact And.intro E.tangentConeTopologyClosed (And.intro E.embeddingDimensionComputed E.tangentConeReducedClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse