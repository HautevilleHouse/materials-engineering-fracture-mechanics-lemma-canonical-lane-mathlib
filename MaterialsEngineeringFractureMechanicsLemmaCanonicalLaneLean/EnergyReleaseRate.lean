import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure EnergyReleaseRatePackage where
  ERR : Type u
  crackExtensionDrivingForce : Prop
  complianceMethod : Prop
  jIntegralEquivalence : Prop
  parisLawCompatibility : Prop
  ERRFinite : Prop
  ERRFiniteTerm : ERRFinite

structure EnergyReleaseRateEvidence (G : EnergyReleaseRatePackage) where
  crackExtensionDrivingForceClosed : G.crackExtensionDrivingForce
  complianceMethodClosed : G.complianceMethod
  jIntegralEquivalenceClosed : G.jIntegralEquivalence
  parisLawCompatibilityClosed : G.parisLawCompatibility
  ERRFiniteClosed : G.ERRFinite

def EnergyReleaseRateClosed (G : EnergyReleaseRatePackage) : Prop :=
  G.crackExtensionDrivingForce ∧ G.complianceMethod ∧
  G.jIntegralEquivalence ∧ G.parisLawCompatibility ∧ G.ERRFinite

theorem energy_release_rate_closed_from_evidence
    (G : EnergyReleaseRatePackage) (E : EnergyReleaseRateEvidence G) :
    EnergyReleaseRateClosed G := by
  exact And.intro E.crackExtensionDrivingForceClosed
    (And.intro E.complianceMethodClosed
      (And.intro E.jIntegralEquivalenceClosed
        (And.intro E.parisLawCompatibilityClosed E.ERRFiniteClosed)))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
