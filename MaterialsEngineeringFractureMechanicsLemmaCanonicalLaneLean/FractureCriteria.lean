import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FractureCriteriaPackage where
  stressCriterion : Prop
  energyCriterion : Prop
  cohesiveZoneModel : Prop
  fractureToughness : Type u
  criticalStressIntensityFactor : Type v
  energyReleaseRate : Type w

structure FractureCriteriaEvidence (F : FractureCriteriaPackage) where
  stressCriterionClosed : F.stressCriterion
  energyCriterionClosed : F.energyCriterion
  cohesiveZoneModelClosed : F.cohesiveZoneModel

def FractureCriteriaClosed (F : FractureCriteriaPackage) : Prop :=
  F.stressCriterion ∧ F.energyCriterion ∧ F.cohesiveZoneModel

theorem fracture_criteria_closed_from_evidence (F : FractureCriteriaPackage)
    (Ev : FractureCriteriaEvidence F) : FractureCriteriaClosed F := by
  exact And.intro Ev.stressCriterionClosed
    (And.intro Ev.energyCriterionClosed Ev.cohesiveZoneModelClosed)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse