import MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FractureSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractureAdmittedObject where
  space : FractureSpace
  crackPresent : Prop
  stressState : Prop
  fractureCriterionSatisfied : Prop
  conclusion : fractureCriterionSatisfied

def FractureWitnessClosed (O : FractureAdmittedObject) : Prop :=
  O.fractureCriterionSatisfied

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse