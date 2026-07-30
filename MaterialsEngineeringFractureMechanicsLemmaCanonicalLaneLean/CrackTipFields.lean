import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure StressIntensityFactorPackage where
  SIF : Type u
  loadingModeIndependent : Prop
  threeDimensionalCrackTip : Prop
  smallScaleYielding : Prop
  SIFLimited : Prop
  SIFLimitedTerm : SIFLimited

structure StressIntensityFactorEvidence (K : StressIntensityFactorPackage) where
  loadingModeIndependentClosed : K.loadingModeIndependent
  threeDimensionalCrackTipClosed : K.threeDimensionalCrackTip
  smallScaleYieldingClosed : K.smallScaleYielding
  SIFLimitedClosed : K.SIFLimited

def StressIntensityFactorClosed (K : StressIntensityFactorPackage) : Prop :=
  K.loadingModeIndependent ∧ K.threeDimensionalCrackTip ∧
  K.smallScaleYielding ∧ K.SIFLimited

theorem stress_intensity_factor_closed_from_evidence
    (K : StressIntensityFactorPackage) (E : StressIntensityFactorEvidence K) :
    StressIntensityFactorClosed K := by
  exact And.intro E.loadingModeIndependentClosed
    (And.intro E.threeDimensionalCrackTipClosed
      (And.intro E.smallScaleYieldingClosed E.SIFLimitedClosed))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
