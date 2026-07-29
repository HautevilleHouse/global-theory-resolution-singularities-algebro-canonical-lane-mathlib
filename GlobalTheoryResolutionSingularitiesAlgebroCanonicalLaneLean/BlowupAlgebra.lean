import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure BlowupAlgebraPackage where
  ideal : Type u
  gradedReesAlgebra : Type v
  exceptionalDivisor : Type w
  blowupEmbedding : Prop
  birational : Prop
  normalFlatness : Prop

structure BlowupAlgebraEvidence (B : BlowupAlgebraPackage) where
  blowupEmbeddingClosed : B.blowupEmbedding
  birationalClosed : B.birational
  normalFlatnessClosed : B.normalFlatness

def BlowupAlgebraClosed (B : BlowupAlgebraPackage) : Prop :=
  B.blowupEmbedding ∧ B.birational ∧ B.normalFlatness

theorem blowup_algebra_closed_from_evidence (B : BlowupAlgebraPackage) (E : BlowupAlgebraEvidence B) : BlowupAlgebraClosed B := by
  exact And.intro E.blowupEmbeddingClosed (And.intro E.birationalClosed E.normalFlatnessClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse