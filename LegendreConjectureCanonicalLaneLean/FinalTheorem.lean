import LegendreConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

def ConstrainedLegendreClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_legendre_endgame (A : AdmissibleClass) :
    ConstrainedLegendreClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
