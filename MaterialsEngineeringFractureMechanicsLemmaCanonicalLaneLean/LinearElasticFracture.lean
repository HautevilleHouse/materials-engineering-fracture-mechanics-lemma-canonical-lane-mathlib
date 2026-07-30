import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure LinearElasticFracturePackage where
  materialBody : Type u
  topology : TopologicalSpace materialBody
  youngModulus : Type v
  poissonRatio : Type w
  crackSet : Type x
  linearElasticConstitutiveLaw : Prop
  equilibriumEquations : Prop
  kinematicCompatibility : Prop
  boundaryConditions : Prop

structure LinearElasticFractureEvidence (L : LinearElasticFracturePackage) where
  linearElasticConstitutiveLawClosed : L.linearElasticConstitutiveLaw
  equilibriumEquationsClosed : L.equilibriumEquations
  kinematicCompatibilityClosed : L.kinematicCompatibility
  boundaryConditionsClosed : L.boundaryConditions

def LinearElasticFractureClosed (L : LinearElasticFracturePackage) : Prop :=
  L.linearElasticConstitutiveLaw ∧
  L.equilibriumEquations ∧
  L.kinematicCompatibility ∧
  L.boundaryConditions

theorem linear_elastic_fracture_closed_from_evidence
    (L : LinearElasticFracturePackage) (E : LinearElasticFractureEvidence L) :
    LinearElasticFractureClosed L := by
  exact And.intro E.linearElasticConstitutiveLawClosed
    (And.intro E.equilibriumEquationsClosed
      (And.intro E.kinematicCompatibilityClosed E.boundaryConditionsClosed))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse