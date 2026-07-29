import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure CanonicalEmbeddingPackage where
  singularVariety : Type u
  embeddingSpace : Type v
  embeddingMap : singularVariety → embeddingSpace
  embeddingClosed : Prop
  normalCrossingsCondition : Prop

structure CanonicalEmbeddingEvidence (C : CanonicalEmbeddingPackage) where
  embeddingClosedClosed : C.embeddingClosed
  normalCrossingsClosed : C.normalCrossingsCondition

def CanonicalEmbeddingClosed (C : CanonicalEmbeddingPackage) : Prop :=
  C.embeddingClosed ∧ C.normalCrossingsCondition

theorem canonical_embedding_closed_from_evidence (C : CanonicalEmbeddingPackage)
    (E : CanonicalEmbeddingEvidence C) : CanonicalEmbeddingClosed C := by
  exact And.intro E.embeddingClosedClosed E.normalCrossingsClosed

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse