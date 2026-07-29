import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

def ConstrainedSingularityResolutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_singularity_resolution_endgame (A : AdmissibleClass) :
    ConstrainedSingularityResolutionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse