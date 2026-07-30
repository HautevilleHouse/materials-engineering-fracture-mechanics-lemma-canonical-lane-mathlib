import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def fractureProjection : Projection FractureAdmittedObject := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem fracture_projection_idempotent (x : FractureAdmittedObject) :
    fractureProjection.toFun (fractureProjection.toFun x) = fractureProjection.toFun x := by
  exact fractureProjection.idempotent x

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse