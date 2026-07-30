import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure ElasticFieldPackage where
  stressTensor : Type u
  strainTensor : Type v
  displacementField : Type w
  stressEquilibrium : Prop
  strainCompatibility : Prop
  constitutiveLaw : Prop

structure ElasticFieldEvidence (E : ElasticFieldPackage) where
  stressEquilibriumClosed : E.stressEquilibrium
  strainCompatibilityClosed : E.strainCompatibility
  constitutiveLawClosed : E.constitutiveLaw

def ElasticFieldClosed (E : ElasticFieldPackage) : Prop :=
  E.stressEquilibrium ∧ E.strainCompatibility ∧ E.constitutiveLaw

theorem elastic_field_closed_from_evidence (E : ElasticFieldPackage)
    (Ev : ElasticFieldEvidence E) : ElasticFieldClosed E := by
  exact And.intro Ev.stressEquilibriumClosed
    (And.intro Ev.strainCompatibilityClosed Ev.constitutiveLawClosed)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse