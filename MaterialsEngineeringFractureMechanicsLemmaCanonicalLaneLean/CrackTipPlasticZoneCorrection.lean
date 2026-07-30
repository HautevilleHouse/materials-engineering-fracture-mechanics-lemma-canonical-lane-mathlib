import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure CrackTipPlasticZonePackage (A : FractureAdmissibleObject) where
  yieldStress : ℝ
  plasticZoneRadius : ℝ
  effectiveCrackLength : A.crackGeometry → ℝ
  appliedStress : ℝ
  stressIntensityFactorComputed : ℝ
  plasticZoneCorrection : ℝ
  isSmallScaleYielding : Prop
  isDugdaleModel : Prop
  isIrwinModel : Prop
  modelApplied : isSmallScaleYielding ∨ isDugdaleModel ∨ isIrwinModel
  correctionTerm : plasticZoneCorrection = tensileYieldStrength * A.crackPropagationCriterion
  cyclicPlasticZone : Prop
  reversePlasticZone : Prop
  monotonicPlasticZone : Prop
  plasticZoneShape : Prop
  plasticZoneSize : Prop
  plasticZoneConfinement : Prop
  plasticZoneInteraction : Prop
  plasticZoneClosure : Prop

structure CrackTipPlasticZoneEvidence (A : FractureAdmissibleObject) (P : CrackTipPlasticZonePackage A) where
  plasticZoneRadiusClosed : P.plasticZoneRadius = P.yieldStress / P.appliedStress
  effectiveCrackLengthClosed : ∀ g : A.crackGeometry, P.effectiveCrackLength g = A.crackLength g + P.plasticZoneRadius
  stressIntensityFactorComputedClosed : P.stressIntensityFactorComputed = P.appliedStress * Real.sqrt (π * P.effectiveCrackLength default)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse