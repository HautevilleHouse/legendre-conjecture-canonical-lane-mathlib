import LegendreConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

def ConstrainedLegendreClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_legendre_closure (A : AdmissibleClass) :
    ConstrainedLegendreClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
