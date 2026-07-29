import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean

structure CanonicalSingularityPackage where
  variety : Type u
  singularLocus : Type v
  canonicalSheaf : Type w
  rationalSingularities : Prop
  quotientSingularities : Prop
  crepantResolution : Prop

structure CanonicalSingularityEvidence (C : CanonicalSingularityPackage) where
  rationalSingularitiesClosed : C.rationalSingularities
  quotientSingularitiesClosed : C.quotientSingularities
  crepantResolutionClosed : C.crepantResolution

def CanonicalSingularityClosed (C : CanonicalSingularityPackage) : Prop :=
  C.rationalSingularities ∧ C.quotientSingularities ∧ C.crepantResolution

theorem canonical_singularity_closed_from_evidence (C : CanonicalSingularityPackage) (E : CanonicalSingularityEvidence C) : CanonicalSingularityClosed C := by
  exact And.intro E.rationalSingularitiesClosed (And.intro E.quotientSingularitiesClosed E.crepantResolutionClosed)

end GlobalTheoryResolutionSingularitiesAlgebroCanonicalLaneLean
end HautevilleHouse