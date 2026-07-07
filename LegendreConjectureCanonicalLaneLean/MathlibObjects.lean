import LegendreConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Prime.Basic

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def LegendrePrimeBetween (n p : Nat) : Prop :=
  n ^ 2 < p ∧ p < (n + 1) ^ 2 ∧ Nat.Prime p

structure LegendreAdmittedObject where
  n : Nat
  nPositive : 0 < n
  candidate : Nat
  candidateInInterval : LegendrePrimeBetween n candidate

structure LegendreEndgameState where
  object : LegendreAdmittedObject

def LegendreWitnessClosed (O : LegendreAdmittedObject) : Prop :=
  exists p : Nat, LegendrePrimeBetween O.n p

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
