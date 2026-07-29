import canonicalLaneMathlib.LinkageDecomposition

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure HomotopyReductionPackage {W : WireAlgebraPackage}
    {L : LinkageDecompositionPackage W} where
  reductionTarget : W.linkGroup
  reductionProcedure : W.linkGroup → W.linkGroup
  homotopyEquivalence : Prop
  correctnessProof : homotopyEquivalence

structure HomotopyReductionEvidence {W : WireAlgebraPackage}
    {L : LinkageDecompositionPackage W}
    (R : HomotopyReductionPackage L) where
  homotopyEquivalenceClosed : R.homotopyEquivalence

def HomotopyReductionClosed {W : WireAlgebraPackage}
    {L : LinkageDecompositionPackage W}
    (R : HomotopyReductionPackage L) : Prop :=
  R.homotopyEquivalence

theorem homotopy_reduction_closed_from_evidence
    {W : WireAlgebraPackage} {L : LinkageDecompositionPackage W}
    (R : HomotopyReductionPackage L) (E : HomotopyReductionEvidence R) :
    HomotopyReductionClosed R := by
  exact E.homotopyEquivalenceClosed

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse