import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure FatiguePackage where
  stressCycle : Type u
  sNCurve : Type v
  fatigueLimit : ℝ
  endurancelimit : ℝ
  minersRuleApplicable : Prop
  parisLawConsistent : Prop
  crackInitiationPredicted : Prop
  crackPropagationPredicted : Prop
  finalFracturePredicted : Prop

def fatigue_closed (F : FatiguePackage) : Prop :=
  F.minersRuleApplicable ∧ F.parisLawConsistent ∧
  F.crackInitiationPredicted ∧ F.crackPropagationPredicted ∧ F.finalFracturePredicted

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
