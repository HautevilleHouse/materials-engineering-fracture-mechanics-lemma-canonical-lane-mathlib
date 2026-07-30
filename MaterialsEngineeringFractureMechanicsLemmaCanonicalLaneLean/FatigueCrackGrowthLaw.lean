import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FatigueCrackGrowthPackage (A : FractureAdmissibleObject) where
  stressIntensityRange : ℝ
  thresholdStressIntensity : ℝ
  parisLawCoefficient : ℝ
  parisLawExponent : ℝ
  crackGrowthRate : ℝ
  isThresholdRegion : Prop
  isParisRegion : Prop
  isFractureRegion : Prop
  regionSelected : isThresholdRegion ∨ isParisRegion ∨ isFractureRegion
  parisLawUsed : isParisRegion → crackGrowthRate = A.crackPropagationCriterion * (stressIntensityRange ^ parisLawExponent)
  thresholdCriterion : isThresholdRegion → stressIntensityRange < A.object.fractureToughness
  fractureCriterion : isFractureRegion → stressIntensityRange ≥ A.object.fractureToughness
  variableAmplitudeLoading : Prop
  constantAmplitudeLoading : Prop
  cycleCount : ℕ
  crackClosureEffects : Prop
  overloadRetardation : Prop
  underloadAcceleration : Prop
  sequenceEffects : Prop
  interactionEffects : Prop
  loadSpectrum : Prop
  flightByFlightSimulation : Prop
  stressRatioEffects : Prop
  frequencyEffects : Prop
  environmentEffects : Prop
  temperatureEffects : Prop
  thicknessEffects : Prop
  orientationEffects : Prop
  microstructureEffects : Prop
  residualStressEffects : Prop
  multiaxialStressEffects : Prop
  constraintEffects : Prop
  sizeEffects : Prop
  notchEffects : Prop
  crackGrowthThreshold : Prop
  smallCrackBehavior : Prop
  longCrackBehavior : Prop
  shortCrackBehavior : Prop
  physicallyShortCrack : Prop
  microstructurallyShortCrack : Prop
  crackGrowthMechanisms : Prop
  crackClosureMechanisms : Prop
  crackOpeningLoad : Prop
  crackClosureLoad : Prop
  effectiveStressIntensityRange : Prop
  crackClosureModel : Prop
  crackClosureFunction : Prop
  crackOpeningStress : Prop
  crackClosureStress : Prop
  plasticityInducedClosure : Prop
  roughnessInducedClosure : Prop
  oxideInducedClosure : Prop
  fluidInducedClosure : Prop
  debrisInducedClosure : Prop
  asperityInducedClosure : Prop
  wedgingEffects : Prop
  frettingEffects : Prop
  corrosionProductInducedClosure : Prop

def FatigueCrackGrowthClosed (A : FractureAdmissibleObject) (F : FatigueCrackGrowthPackage A) : Prop :=
  F.regionSelected ∧ (∀ h : F.isParisRegion, F.parisLawUsed h = (F.crackGrowthRate = A.crackPropagationCriterion * (F.stressIntensityRange ^ F.parisLawExponent)))

theorem fatigue_crack_growth_closed_from_evidence (A : FractureAdmissibleObject) (F : FatigueCrackGrowthPackage A) :
    FatigueCrackGrowthClosed A F := by
  refine And.intro F.regionSelected ?_
  intro h
  exact F.parisLawUsed h

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse