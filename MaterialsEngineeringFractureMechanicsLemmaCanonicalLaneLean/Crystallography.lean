import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Type v
  symmetryGroup : Type w
  millerIndices : Type x
  preferredOrientation : Prop
  slipSystemsClassified : Prop
  textureCoefficients : Prop

def crystallography_closed (C : CrystallographyPackage) : Prop :=
  C.preferredOrientation ∧ C.slipSystemsClassified ∧ C.textureCoefficients

end MaterialsEngineeringFractureMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
