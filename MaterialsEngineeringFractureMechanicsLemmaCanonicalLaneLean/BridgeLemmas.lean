import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse