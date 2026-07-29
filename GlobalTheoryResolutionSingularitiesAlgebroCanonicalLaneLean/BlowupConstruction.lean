import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure BlowupConstructionPackage where
  ambientSpace : Type u
  center : Set (Type u)
  exceptionalDivisor : Type v
  blowupMap : exceptionalDivisor → ambientSpace
  blowupIsIsomorphismOutsideCenter : Prop
  resolutionCondition : Prop

structure BlowupConstructionEvidence (B : BlowupConstructionPackage) where
  blowupIsIsomorphismClosed : B.blowupIsIsomorphismOutsideCenter
  resolutionClosed : B.resolutionCondition

def BlowupConstructionClosed (B : BlowupConstructionPackage) : Prop :=
  B.blowupIsIsomorphismOutsideCenter ∧ B.resolutionCondition

theorem blowup_construction_closed_from_evidence (B : BlowupConstructionPackage)
    (E : BlowupConstructionEvidence B) : BlowupConstructionClosed B := by
  exact And.intro E.blowupIsIsomorphismClosed E.resolutionClosed

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse