import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure CrackTipSingularityPackage where
  asymptoticField : Type u
  stressIntensityFactor : Type v
  singularExponent : Type w
  modeIStressIntensityClosed : Prop
  modeIIStressIntensityClosed : Prop
  modeIIIStressIntensityClosed : Prop

structure CrackTipSingularityEvidence (C : CrackTipSingularityPackage) where
  modeIStressIntensityClosed : C.modeIStressIntensityClosed
  modeIIStressIntensityClosed : C.modeIIStressIntensityClosed
  modeIIIStressIntensityClosed : C.modeIIIStressIntensityClosed

def CrackTipSingularityClosed (C : CrackTipSingularityPackage) : Prop :=
  C.modeIStressIntensityClosed ∧ C.modeIIStressIntensityClosed ∧ C.modeIIIStressIntensityClosed

theorem crack_tip_singularity_closed_from_evidence
    (C : CrackTipSingularityPackage) (Ev : CrackTipSingularityEvidence C) :
    CrackTipSingularityClosed C := by
  exact And.intro Ev.modeIStressIntensityClosed
    (And.intro Ev.modeIIStressIntensityClosed Ev.modeIIIStressIntensityClosed)

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse