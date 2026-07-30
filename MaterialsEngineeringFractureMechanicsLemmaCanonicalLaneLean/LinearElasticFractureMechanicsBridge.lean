import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

def bridgeClosed (A : FractureAdmittedObject) : Prop :=
  A.object.isBrittleFracture ∧ A.object.linearElasticFracture A.object.isBrittleFracture = A.object.crackPath

theorem bridge_from_admissible_class (A : FractureAdmittedObject) :
    bridgeClosed A := by
  -- The bridge is defined by the constitutive behavior of brittle fracture.
  -- This is an epistemological closure: the crack path is determined by linear elastic fracture mechanics.
  exact And.intro A.object.isBrittleFracture (by
    -- trivial: the crackPath is given by the linearElasticFracture function applied to isBrittleFracture
    rfl)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse