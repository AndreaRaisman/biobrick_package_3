#' translate_rna
#'
#' @param codons ordered RNA sequence divided into 3-nucleotide long subsequences
#'
#' @return aa_seq amino acid sequence translated from the RNA sequence
#' @export
#'
#' @examples AUG to met
translate_rna <- function(codons){
  aa_seq <- paste0(codon_table[codons], collapse = "")
  return(aa_seq)
}
