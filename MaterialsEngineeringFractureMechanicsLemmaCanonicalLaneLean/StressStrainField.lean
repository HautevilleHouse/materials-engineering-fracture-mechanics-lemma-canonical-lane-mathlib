import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure StressStrainField where
  stressTensor : Type u
  strainTensor : Type v
  linearElasticConstitutiveLaw : Prop
  equilibriumCondition : Prop
  compatibilityCondition : Prop

structure StressStrainFieldEvidence (S : StressStrainField) where
  linearElasticConstitutiveLawClosed : S.linearElasticConstitutiveLaw
  equilibriumConditionClosed : S.equilibriumCondition
  compatibilityConditionClosed : S.compatibilityCondition

def StressStrainFieldClosed (S : StressStrainField) : Prop :=
  S.linearElasticConstitutiveLaw ∧ S.equilibriumCondition ∧ S.compatibilityCondition

theorem stress_strain_field_closed_from_evidence (S : StressStrainField) (E : StressStrainFieldEvidence S) :
    StressStrainFieldClosed S := by
  exact And.intro E.linearElasticConstitutiveLawClosed
    (And.intro E.equilibriumConditionClosed E.compatibilityConditionClosed)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse