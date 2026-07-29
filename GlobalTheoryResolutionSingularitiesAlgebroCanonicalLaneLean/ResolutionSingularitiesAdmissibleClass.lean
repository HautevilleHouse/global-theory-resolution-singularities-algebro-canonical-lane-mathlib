import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure SingularityAdmittedObject where
  variety : Type
  scheme : Type
  blowupSequence : List (Type → Type)
  smoothCentralFiber : Prop
  exceptionalDivisor : Type
  conclusion : smoothCentralFiber

structure AdmissibleClass where
  object : SingularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse