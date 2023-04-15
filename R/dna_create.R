#' Create DNA strand
#'
#' @param dna_length int that indicates the length of the desired DNA strand.
#'
#' @return dna_seq string of nucleotides with the desired length
#' @export
#'
#' @examples dna_length = 8, dna_seq = "ACTCAGGT"
dna_create <- function(dna_length){
  nucl <- sample(c("A", "T", "G", "C"), size = dna_length, replace = TRUE)
  dna_seq <- paste0(nucl, collapse = "")
  return(dna_seq)
}
