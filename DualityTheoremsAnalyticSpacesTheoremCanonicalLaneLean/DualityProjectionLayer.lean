import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dualityProjection : Projection ClosureState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem duality_projection_idempotent (x : ClosureState) :
    dualityProjection.toFun (dualityProjection.toFun x) = dualityProjection.toFun x := by
  exact dualityProjection.idempotent x

end DualityTheoremsAnalyticSpacesTheoremCanonicalLaneLean
end HautevilleHouse