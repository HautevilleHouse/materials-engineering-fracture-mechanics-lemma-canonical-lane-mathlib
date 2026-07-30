import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.StressStrainField

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure CrackTipAsymptoticsPackage (S : StressStrainField) where
  singularityOrder : ℝ
  stressIntensityFactor : Type w
  nearTipFieldExpansion : Prop
  KFieldDominance : Prop

structure CrackTipAsymptoticsEvidence {S : StressStrainField} (C : CrackTipAsymptoticsPackage S) where
  nearTipFieldExpansionClosed : C.nearTipFieldExpansion
  KFieldDominanceClosed : C.KFieldDominance

def CrackTipAsymptoticsClosed {S : StressStrainField} (C : CrackTipAsymptoticsPackage S) : Prop :=
  C.nearTipFieldExpansion ∧ C.KFieldDominance

theorem crack_tip_asymptotics_closed_from_evidence
    {S : StressStrainField} (C : CrackTipAsymptoticsPackage S) (E : CrackTipAsymptoticsEvidence C) :
    CrackTipAsymptoticsClosed C := by
  exact And.intro E.nearTipFieldExpansionClosed E.KFieldDominanceClosed

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse