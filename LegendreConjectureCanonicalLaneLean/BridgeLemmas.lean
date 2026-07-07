import LegendreConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LegendreWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact Exists.intro A.object.candidate A.object.candidateInInterval

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
