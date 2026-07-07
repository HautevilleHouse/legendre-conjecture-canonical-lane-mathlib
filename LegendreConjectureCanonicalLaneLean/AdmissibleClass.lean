import LegendreConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : LegendreAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LegendrePatternSubstrateClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
