import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

def gateClosed (A : FractureAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FractureAdmittedObject) :
    gateClosed A := by
  exact A.object.fractureInitiationCondition

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse