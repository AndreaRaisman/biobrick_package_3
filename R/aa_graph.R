#' aa_graph
#'
#' @param aa_seq amino acid sequence
#'
#' @return aa_plot plot of the amino acid occurrences
#' @export
#'
#' @examples If you input LLNRKKK, L is 2/7; N is 1/7, R is 1/7 and K is 3/7
aa_graph <- function(aa_seq){
  aa_string <- aa_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()
  counts <- sapply(aa_string, function(amino_acid) stringr::str_count(string = aa_seq, pattern =
                                                                       amino_acid)) %>%
    as.data.frame()
  colnames(counts) <- c("Counts")
  counts[["AA_seq"]] <- rownames(counts)
  aa_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = AA_seq, y = Counts, fill = AA_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")
  return(aa_plot)
}
