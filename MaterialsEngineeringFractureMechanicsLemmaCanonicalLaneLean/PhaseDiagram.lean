import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseField : Type u
  temperature : Type v
  composition : Type w
  phasesIdentified : Prop
  phaseBoundaries : Prop
  gibbsEnergyFunctions : Prop
  tieLinesConstructed : Prop
  eutecticPoint : Prop
  congruentTransformation : Prop

def phase_diagram_closed (P : PhaseDiagramPackage) : Prop :=
  P.phasesIdentified ∧ P.phaseBoundaries ∧ P.gibbsEnergyFunctions ∧
  P.tieLinesConstructed ∧ P.eutecticPoint ∧ P.congruentTransformation

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
