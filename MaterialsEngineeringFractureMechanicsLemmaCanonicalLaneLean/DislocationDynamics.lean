import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure DislocationDynamicsPackage where
  dislocationType : Type u
  burgersVector : Type v
  slipSystem : Type w
  peierlsStress : ℝ
  dislocationVelocity : ℝ
  dislocationDensityEvolved : Prop
  frankReadSourceOperational : Prop
  workHardeningModel : Prop

def dislocation_dynamics_closed (D : DislocationDynamicsPackage) : Prop :=
  D.dislocationDensityEvolved ∧ D.frankReadSourceOperational ∧ D.workHardeningModel

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
