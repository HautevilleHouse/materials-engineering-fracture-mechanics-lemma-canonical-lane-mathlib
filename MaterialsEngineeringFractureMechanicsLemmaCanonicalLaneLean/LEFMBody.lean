import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure LEFMBodyPackage where
  linearElasticAssumption : Prop
  homogeneousIsotropicMaterial : Prop
  smallScaleYielding : Prop
  planeStress : Prop
  planeStrain : Prop
  superpositionValid : Prop

structure LEFMBodyEvidence (L : LEFMBodyPackage) where
  linearElasticAssumptionClosed : L.linearElasticAssumption
  homogeneousIsotropicMaterialClosed : L.homogeneousIsotropicMaterial
  smallScaleYieldingClosed : L.smallScaleYielding
  planeStressClosed : L.planeStress
  planeStrainClosed : L.planeStrain
  superpositionValidClosed : L.superpositionValid

def LEFMBodyClosed (L : LEFMBodyPackage) : Prop :=
  L.linearElasticAssumption ∧ L.homogeneousIsotropicMaterial ∧
  L.smallScaleYielding ∧ L.planeStress ∧ L.planeStrain ∧ L.superpositionValid

theorem lefm_body_closed_from_evidence (L : LEFMBodyPackage)
    (Ev : LEFMBodyEvidence L) : LEFMBodyClosed L := by
  exact And.intro Ev.linearElasticAssumptionClosed
    (And.intro Ev.homogeneousIsotropicMaterialClosed
      (And.intro Ev.smallScaleYieldingClosed
        (And.intro Ev.planeStressClosed
          (And.intro Ev.planeStrainClosed Ev.superpositionValidClosed))))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse