import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure BlowupAlgebrasPackage where
  ambientRing : Type
  ideal : Type
  associatedGradedRing : Type
  reesAlgebra : Type
  syzygyModule : Type
  blowupAlgebraDefined : Prop
  reesAlgebraFinitelyGenerated : Prop
  
structure BlowupAlgebrasEvidence (B : BlowupAlgebrasPackage) where
  blowupAlgebraDefinedClosed : B.blowupAlgebraDefined
  reesAlgebraFinitelyGeneratedClosed : B.reesAlgebraFinitelyGenerated

def BlowupAlgebrasClosed (B : BlowupAlgebrasPackage) : Prop :=
  B.blowupAlgebraDefined ∧ B.reesAlgebraFinitelyGenerated

theorem blowup_algebras_closed_from_evidence (B : BlowupAlgebrasPackage) (E : BlowupAlgebrasEvidence B) :
    BlowupAlgebrasClosed B := by
  exact And.intro E.blowupAlgebraDefinedClosed E.reesAlgebraFinitelyGeneratedClosed

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse