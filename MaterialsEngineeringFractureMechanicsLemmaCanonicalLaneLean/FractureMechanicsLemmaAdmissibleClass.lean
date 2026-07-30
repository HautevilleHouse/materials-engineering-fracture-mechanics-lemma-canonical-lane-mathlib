import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FractureAdmissibleObject where
  crackGeometry : Type
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  criticalCrackLength : ℝ
  crackExtensionForces : ℝ
  energyReleaseRate : ℝ
  crackPath : crackGeometry → ℝ
  isBrittleFracture : Prop
  isDuctileFracture : Prop
  fractureModeI : Prop
  fractureModeII : Prop
  fractureModeIII : Prop
  linearElasticFracture : isBrittleFracture → (crackPath → ℝ)
  elasticPlasticFracture : isDuctileFracture → (crackPath → ℝ)
  stressState : crackGeometry → ℝ
  strainState : crackGeometry → ℝ
  localStrainEnergyDensity : ℝ
  fractureInitiationCondition : energyReleaseRate ≥ fractureToughness
  crackPropagationCriterion : ℝ
  dynamicEffects : Prop
  temperatureEffects : Prop
  fatigueCrackGrowth : Prop
  environmentAssistedCracking : Prop
  crackBlunting : Prop
  crackBridging : Prop
  microstructuralEffects : Prop
  residualStresses : Prop
  multiaxialStressState : Prop
  constraintEffects : Prop
  gradationEffects : Prop
  sizeEffects : Prop
  notchEffects : Prop
  crackInteraction : Prop
  crackClosure : Prop
  overloadEffects : Prop
  underloadEffects : Prop
  variableAmplitudeLoading : Prop
  randomLoading : Prop
  corrosionFatigue : Prop
  creepFatigue : Prop
  thermoMechanicalFatigue : Prop
  rollingContactFatigue : Prop
  frettingFatigue : Prop
  contactFatigue : Prop
  wearFatigue : Prop
  erosionFatigue : Prop
  cavitationFatigue : Prop
  corrosionErosion : Prop
  hydrogenEmbrittlement : Prop
  liquidMetalEmbrittlement : Prop
  stressCorrosionCracking : Prop
  corrosionFatigueCrackGrowth : Prop
  corrosionFatigueThreshold : Prop
  corrosionFatigueCrackClosure : Prop
  corrosionFatigueVariableAmplitude : Prop
  corrosionFatigueRandomLoading : Prop

structure FractureAdmittedObject where
  object : FractureAdmissibleObject
  endpointSatisfied : object.fractureInitiationCondition
  remainderRecorded : object.crackPropagationCriterion > 0

def FractureEvidenceWitness (O : FractureAdmittedObject) : Prop :=
  O.endpointSatisfied ∨ O.remainderRecorded

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse