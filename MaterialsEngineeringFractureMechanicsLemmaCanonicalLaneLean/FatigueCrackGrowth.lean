import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.PlasticZoneCorrection

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FatigueCrackGrowthPackage {S : StressStrainField} {C : CrackTipAsymptoticsPackage S}
    {E : EnergyReleaseRatePackage C} (P : PlasticZoneCorrectionPackage E) where
  parisLaw : Prop
  stressRatioEffect : Prop
  crackGrowthRate : ℝ
  thresholdCondition : Prop

structure FatigueCrackGrowthEvidence {S : StressStrainField} {C : CrackTipAsymptoticsPackage S}
    {E : EnergyReleaseRatePackage C} {P : PlasticZoneCorrectionPackage E}
    (F : FatigueCrackGrowthPackage P) where
  parisLawClosed : F.parisLaw
  stressRatioEffectClosed : F.stressRatioEffect
  thresholdConditionClosed : F.thresholdCondition

def FatigueCrackGrowthClosed {S : StressStrainField} {C : CrackTipAsymptoticsPackage S}
    {E : EnergyReleaseRatePackage C} {P : PlasticZoneCorrectionPackage E}
    (F : FatigueCrackGrowthPackage P) : Prop :=
  F.parisLaw ∧ F.stressRatioEffect ∧ F.thresholdCondition

theorem fatigue_crack_growth_closed_from_evidence
    {S : StressStrainField} {C : CrackTipAsymptoticsPackage S}
    {E : EnergyReleaseRatePackage C} {P : PlasticZoneCorrectionPackage E}
    (F : FatigueCrackGrowthPackage P) (Ev : FatigueCrackGrowthEvidence F) :
    FatigueCrackGrowthClosed F := by
  exact And.intro Ev.parisLawClosed
    (And.intro Ev.stressRatioEffectClosed Ev.thresholdConditionClosed)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse