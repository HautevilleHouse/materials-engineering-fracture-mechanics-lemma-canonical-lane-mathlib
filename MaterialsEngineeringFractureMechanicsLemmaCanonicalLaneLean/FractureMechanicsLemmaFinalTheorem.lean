import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

def ConstrainedFractureMechanicsClosure (A : FractureAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fracture_mechanics_endgame (A : FractureAdmittedObject) :
    ConstrainedFractureMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse