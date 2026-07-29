import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure BlowupEmbeddingPackage where
  ambientVariety : Type u
  centerIdeal : Type v
  blowupMap : Type w
  exceptionalDivisorDefined : Prop
  blowupMapIsProper : Prop
  embeddingRespectsStratification : Prop

structure BlowupEmbeddingEvidence (B : BlowupEmbeddingPackage) where
  exceptionalDivisorDefinedClosed : B.exceptionalDivisorDefined
  blowupMapIsProperClosed : B.blowupMapIsProper
  embeddingRespectsStratificationClosed : B.embeddingRespectsStratification

def BlowupEmbeddingClosed (B : BlowupEmbeddingPackage) : Prop :=
  B.exceptionalDivisorDefined ∧ B.blowupMapIsProper ∧ B.embeddingRespectsStratification

theorem blowup_embedding_closed_from_evidence (B : BlowupEmbeddingPackage)
    (E : BlowupEmbeddingEvidence B) : BlowupEmbeddingClosed B := by
  exact And.intro E.exceptionalDivisorDefinedClosed
    (And.intro E.blowupMapIsProperClosed E.embeddingRespectsStratificationClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse