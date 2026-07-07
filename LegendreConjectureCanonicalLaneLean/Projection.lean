import LegendreConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def legendreProjection : Projection LegendreEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem legendre_projection_idempotent (x : LegendreEndgameState) :
    legendreProjection.toFun (legendreProjection.toFun x) = legendreProjection.toFun x := by
  exact legendreProjection.idempotent x

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
