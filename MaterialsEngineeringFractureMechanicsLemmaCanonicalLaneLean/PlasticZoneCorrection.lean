import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure PlasticZoneCorrectionPackage where
  plasticRadius : Type u
  irwinCorrectionApplied : Prop
  shapeFactorDependence : Prop
  planeStrainCondition : Prop
  correctionValid : Prop
  correctionValidTerm : correctionValid

structure PlasticZoneCorrectionEvidence (P : PlasticZoneCorrectionPackage) where
  irwinCorrectionAppliedClosed : P.irwinCorrectionApplied
  shapeFactorDependenceClosed : P.shapeFactorDependence
  planeStrainConditionClosed : P.planeStrainCondition
  correctionValidClosed : P.correctionValid

def PlasticZoneCorrectionClosed (P : PlasticZoneCorrectionPackage) : Prop :=
  P.irwinCorrectionApplied ∧ P.shapeFactorDependence ∧
  P.planeStrainCondition ∧ P.correctionValid

theorem plastic_zone_correction_closed_from_evidence
    (P : PlasticZoneCorrectionPackage) (E : PlasticZoneCorrectionEvidence P) :
    PlasticZoneCorrectionClosed P := by
  exact And.intro E.irwinCorrectionAppliedClosed
    (And.intro E.shapeFactorDependenceClosed
      (And.intro E.planeStrainConditionClosed E.correctionValidClosed))

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
