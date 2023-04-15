#' t_to_u
#'
#' @param dna_seq with nucleotides A, C, G and T
#'
#' @return rna_seq with nucleotides A, C, G and U
#' @export
#'
#' @examples input "ATTCG", get "AUUCG"
t_to_u <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}


