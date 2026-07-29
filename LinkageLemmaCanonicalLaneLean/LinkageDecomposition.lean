import canonicalLaneMathlib.WireAlgebra

namespace HautevilleHouse
namespace LinkageLemmaCanonicalLaneLean

structure LinkageDecompositionPackage {W : WireAlgebraPackage} where
  atomicLinks : Type
  decompositionMap : atomicLinks → W.linkGroup
  finitePresentation : Prop
  wellDefined : Prop
  wellDefinedTerm : wellDefined

structure LinkageDecompositionEvidence {W : WireAlgebraPackage}
    (L : LinkageDecompositionPackage W) where
  finitePresentationClosed : L.finitePresentation

def LinkageDecompositionClosed {W : WireAlgebraPackage}
    (L : LinkageDecompositionPackage W) : Prop :=
  L.finitePresentation ∧ L.wellDefined

theorem linkage_decomposition_closed_from_evidence
    {W : WireAlgebraPackage} (L : LinkageDecompositionPackage W)
    (E : LinkageDecompositionEvidence L) : LinkageDecompositionClosed L := by
  exact And.intro E.finitePresentationClosed L.wellDefinedTerm

end LinkageLemmaCanonicalLaneLean
end HautevilleHouse