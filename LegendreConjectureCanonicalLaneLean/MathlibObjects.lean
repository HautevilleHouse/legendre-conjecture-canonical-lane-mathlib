import LegendreConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Set.Basic
import Mathlib.NumberTheory.LSeries.Basic

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

noncomputable def PrimePatternLSeriesValue (coeffs : Nat -> ℂ) (s : ℂ) : ℂ :=
  LSeries coeffs s

def PrimePatternLSeriesAdmissible (coeffs : Nat -> ℂ) (s : ℂ) : Prop :=
  LSeriesSummable coeffs s

theorem prime_pattern_lseries_zero_admissible (s : ℂ) :
    PrimePatternLSeriesAdmissible 0 s := by
  exact LSeriesSummable_zero

def LegendrePrimeBetween (n p : Nat) : Prop :=
  n ^ 2 < p ∧ p < (n + 1) ^ 2 ∧ Nat.Prime p

structure LegendreWindow where
  n : Nat
  lowerEndpoint : Nat
  upperEndpoint : Nat
  nPositive : 0 < n
  lowerMatchesSquare : lowerEndpoint = n ^ 2
  upperMatchesSquare : upperEndpoint = (n + 1) ^ 2

structure LegendreAdmittedObject where
  window : LegendreWindow
  candidate : Nat
  candidateInInterval : LegendrePrimeBetween window.n candidate
  admissibleWindow : Prop
  admissibleWindowWitness : admissibleWindow
  localObstructionsCleared : Prop
  localObstructionsWitness : localObstructionsCleared
  obstructionRemainderRecorded : Prop
  obstructionRemainderWitness : obstructionRemainderRecorded
  analyticCountingSurfaceRecorded : Prop
  analyticCountingSurfaceWitness : analyticCountingSurfaceRecorded
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false

structure LegendreClosureState where
  object : LegendreAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def LegendreWitnessClosed (O : LegendreAdmittedObject) : Prop :=
  exists p : Nat, LegendrePrimeBetween O.window.n p

def LegendrePatternSubstrateClosed (O : LegendreAdmittedObject) : Prop :=
  LegendreWitnessClosed O ∧
  O.admissibleWindow ∧
  O.localObstructionsCleared ∧
  O.obstructionRemainderRecorded ∧
  O.analyticCountingSurfaceRecorded ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
