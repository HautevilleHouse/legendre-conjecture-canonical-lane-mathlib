import LegendreConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LegendrePatternSubstrateClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨(Exists.intro A.object.candidate A.object.candidateInInterval),
    A.object.admissibleWindowWitness,
    A.object.localObstructionsWitness,
    A.object.obstructionRemainderWitness,
    A.object.analyticCountingSurfaceWitness,
    A.object.classicalRemainderCarried⟩

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
