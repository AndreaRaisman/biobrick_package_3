#' order_codons
#'
#' @param rna_seq string of nucleotides
#' @param start
#'
#' @return codons the RNA sequence subdivided into codons
#' @export
#'
#' @examples input "ACTGCTA", output "ACT" "GCT"
order_codons <- function(rna_seq, start = 1){
  seq_length <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
