import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Type w
  youngModulus : ℝ
  poissonRatio : ℝ
  hookesLawSatisfied : Prop
  equilibriumEquation : Prop
  compatibilityEquation : Prop

def elasticity_closed (E : ElasticityPackage) : Prop :=
  E.hookesLawSatisfied ∧ E.equilibriumEquation ∧ E.compatibilityEquation

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
