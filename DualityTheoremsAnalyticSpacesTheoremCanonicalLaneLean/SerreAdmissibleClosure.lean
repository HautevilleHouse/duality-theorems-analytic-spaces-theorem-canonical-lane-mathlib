import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean.AnalyticDualitySheaf
import HautevilleHouse.DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean.DualComplexStratification

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnalyticDualityBridge A ∧ DualStratificationClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro (analytic_duality_bridge_check A) dual_stratification_closed_check

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSerreClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_serre_endgame (A : AdmissibleClass) :
    ConstrainedSerreClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean
end HautevilleHouse
