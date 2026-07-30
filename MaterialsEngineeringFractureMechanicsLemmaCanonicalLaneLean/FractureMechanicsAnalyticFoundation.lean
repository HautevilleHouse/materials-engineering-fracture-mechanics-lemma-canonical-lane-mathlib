import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.EnergyReleaseRate

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FractureMechanicsAnalyticFoundation where
  linearElasticFracture : LinearElasticFracturePackage
  linearElasticFractureEvidence : LinearElasticFractureEvidence linearElasticFracture
  crackTipStressField : CrackTipStressFieldPackage linearElasticFracture
  crackTipStressFieldEvidence : CrackTipStressFieldEvidence crackTipStressField
  energyReleaseRate : EnergyReleaseRatePackage crackTipStressField
  energyReleaseRateEvidence : EnergyReleaseRateEvidence energyReleaseRate

def FractureMechanicsAnalyticFoundationClosed (A : FractureMechanicsAnalyticFoundation) : Prop :=
  LinearElasticFractureClosed A.linearElasticFracture ∧
  CrackTipStressFieldClosed A.crackTipStressField ∧
  EnergyReleaseRateClosed A.energyReleaseRate

theorem fracture_mechanics_analytic_foundation_closed_from_evidence
    (A : FractureMechanicsAnalyticFoundation) :
    FractureMechanicsAnalyticFoundationClosed A := by
  exact And.intro (linear_elastic_fracture_closed_from_evidence A.linearElasticFracture A.linearElasticFractureEvidence)
    (And.intro (crack_tip_stress_field_closed_from_evidence A.crackTipStressField A.crackTipStressFieldEvidence)
      (energy_release_rate_closed_from_evidence A.energyReleaseRate A.energyReleaseRateEvidence))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse