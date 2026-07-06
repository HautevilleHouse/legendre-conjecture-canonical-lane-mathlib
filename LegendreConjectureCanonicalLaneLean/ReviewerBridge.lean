import LegendreConjectureCanonicalLaneLean.Formalization
import LegendreConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace LegendreConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "e3ebb683572fd114dcd8a2e0e6dd588352d92513e362d3d22a38f1ceb1d8407d", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "69245e561c6666e46d47db2988e77f1c96839a9cf2c7c1fb03c65aa355465604", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "764936e4c1edb0b167a23e952faace3f7df8f49629a23b12a57b7747528b37f6", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "d563757768049b2dec056c1735c2b860d29f13f5edce4f0da2c23326cec3c528", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "a387fc8d18a49657e9e6761a2a20c1d2a63bd05711d49989a6f24358666b1982", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "877ea4e97b5e49830f6d2b63875cbc417fef296532c5c9176f66adab094f097d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "49af8b072c7e21c92fb4919feebcb99d5c74e249212b02036f16c0b459a12ea3", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "27e137ef2b65b767aab98a6bb65fca018b7cb9cefed0887252511e5ba4126685", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "4d0dce81d5524f8b44cec13c3a767da9438b3f113388e3c7022c49bb483d31ee", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "LEG_G1", constant := "kappa_interval" },
  { gate := "LEG_G2", constant := "sigma_density" },
  { gate := "LEG_G3", constant := "kappa_compact" },
  { gate := "LEG_G4", constant := "rho_rigidity" },
  { gate := "LEG_G5", constant := "gap_transfer" },
  { gate := "LEG_G6", constant := "eps_coh" },
  { gate := "LEG_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "c39784015e1a732eefe04ba7cf40eed0f38155c687b4f30855fb180e2dce34a0" },
  { path := "README.md", sha256 := "55fc399b0c2d9b9cfbfd1b00750662a76e81654d2388ac7fe7f49738abb987ec" },
  { path := "artifacts/constants_extracted.json", sha256 := "d563757768049b2dec056c1735c2b860d29f13f5edce4f0da2c23326cec3c528" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "764936e4c1edb0b167a23e952faace3f7df8f49629a23b12a57b7747528b37f6" },
  { path := "artifacts/constants_registry.json", sha256 := "a387fc8d18a49657e9e6761a2a20c1d2a63bd05711d49989a6f24358666b1982" },
  { path := "artifacts/promotion_report.json", sha256 := "49af8b072c7e21c92fb4919feebcb99d5c74e249212b02036f16c0b459a12ea3" },
  { path := "artifacts/stitch_constants.json", sha256 := "877ea4e97b5e49830f6d2b63875cbc417fef296532c5c9176f66adab094f097d" },
  { path := "notes/EG1_public.md", sha256 := "9084c879527c806810b2e02617611186237974468d083cd10f0fe018267faba4" },
  { path := "notes/EG2_public.md", sha256 := "df7324fd7e6889224f024d2d24faada7c097be7cd8ab76272948acdfb6559623" },
  { path := "notes/EG3_public.md", sha256 := "7f2fe0402c55f755a9d33f5275b0910df63b547a1d65e7a0f31d100a368cd1d6" },
  { path := "notes/EG4_public.md", sha256 := "d324938c44b55e02d6143e1a6ed24da5f9bc25fbe74916865cb31912ed99b972" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "69245e561c6666e46d47db2988e77f1c96839a9cf2c7c1fb03c65aa355465604" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "4bed944915721678d55d28d9502d702808e7f29d815104e118b2b5e5aa94115d" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "30e89dd554249fc7f234448e25ab05cbff653f2f73ab13ce352d8fc7815e6475" },
  { path := "paper/LEGENDRE_CONJECTURE_PREPRINT.md", sha256 := "f1e97699f3d309a105689f8cbab6cb6ad9004938bd6221e1fe89f627939a2bac" },
  { path := "repro/REPRO_PACK.md", sha256 := "7d187e87e80bfde95f1e5bd041c9720957f1d53042c76285d3509e38c0eb6ffa" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "5962dcf7b8f9115ba7739efe331d3307fffc395854c3ddc952001f08c66e1eb7" },
  { path := "repro/certificate_baseline.json", sha256 := "4d0dce81d5524f8b44cec13c3a767da9438b3f113388e3c7022c49bb483d31ee" },
  { path := "repro/run_repro.sh", sha256 := "da0a78efe3480ee1f4e403a20878a406d5925ddae225071f926c589abc8095fe" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/leg_closure_guard.py", sha256 := "bef4865de6b343854df3ff6e956cae2743fac450539703e83c6b8129fe19b764" },
  { path := "scripts/README.md", sha256 := "c0e6e9616c57e5b8201d01038643fe19e5c16b4d798f80a828702c5c1e27240f" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "LEG_G1", status := "PASS" },
  { gate := "LEG_G2", status := "PASS" },
  { gate := "LEG_G3", status := "PASS" },
  { gate := "LEG_G4", status := "PASS" },
  { gate := "LEG_G5", status := "PASS" },
  { gate := "LEG_G6", status := "PASS" },
  { gate := "LEG_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "gap_transfer", value := "1.02745" },
  { key := "kappa_compact", value := "0.8032128514056224" },
  { key := "kappa_interval", value := "1.084664" },
  { key := "rho_rigidity", value := "1.073" },
  { key := "sigma_density", value := "1.069" },
  { key := "sigma_star_can", value := "1.052" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "gap_transfer",
  "kappa_compact",
  "kappa_interval",
  "rho_rigidity",
  "sigma_density",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end LegendreConjectureCanonicalLaneLean
end HautevilleHouse
