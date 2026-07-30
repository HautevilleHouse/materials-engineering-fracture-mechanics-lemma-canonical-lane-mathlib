import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FractureMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractureMechanicsAdmittedObject where
  space : FractureMechanicsSpace
  crackPropagationModel : Prop
  stressIntensityFactor : Prop
  fractureToughnessModel : Type
  materialConstitutiveLaw : TopologicalSpace fractureToughnessModel
  failureCriterionSatisfied : Prop
  conclusion : failureCriterionSatisfied

def FractureWitnessClosed (O : FractureMechanicsAdmittedObject) : Prop :=
  O.failureCriterionSatisfied

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse