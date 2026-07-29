import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure ResolutionEndgamePackage where
  completedBlowupSequence : List (Type → Type)
  smoothModelExist : Prop
  resolutionFunction : Type
  endgameStatement : Prop
  
structure ResolutionEndgameEvidence (R : ResolutionEndgamePackage) where
  smoothModelExistClosed : R.smoothModelExist
  endgameStatementClosed : R.endgameStatement

def ResolutionEndgameClosed (R : ResolutionEndgamePackage) : Prop :=
  R.smoothModelExist ∧ R.endgameStatement

theorem resolution_endgame_closed_from_evidence (R : ResolutionEndgamePackage) (E : ResolutionEndgameEvidence R) :
    ResolutionEndgameClosed R := by
  exact And.intro E.smoothModelExistClosed E.endgameStatementClosed

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse