import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.LinearElasticFracture

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure CrackTipStressFieldPackage {L : LinearElasticFracturePackage} where
  stressIntensityFactor : Type u
  nearTipAsymptotics : Prop
  singularityExponent : Prop
  modeSeparation : Prop

structure CrackTipStressFieldEvidence {L : LinearElasticFracturePackage}
    (C : CrackTipStressFieldPackage L) where
  stressIntensityFactorClosed : C.stressIntensityFactor
  nearTipAsymptoticsClosed : C.nearTipAsymptotics
  singularityExponentClosed : C.singularityExponent
  modeSeparationClosed : C.modeSeparation

def CrackTipStressFieldClosed {L : LinearElasticFracturePackage}
    (C : CrackTipStressFieldPackage L) : Prop :=
  C.stressIntensityFactor ∧ C.nearTipAsymptotics ∧
  C.singularityExponent ∧ C.modeSeparation

theorem crack_tip_stress_field_closed_from_evidence
    {L : LinearElasticFracturePackage} (C : CrackTipStressFieldPackage L)
    (E : CrackTipStressFieldEvidence C) : CrackTipStressFieldClosed C := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.nearTipAsymptoticsClosed
      (And.intro E.singularityExponentClosed E.modeSeparationClosed))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse