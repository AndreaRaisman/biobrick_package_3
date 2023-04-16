test_that("translate_rna function correctly translates codons into amino acids", {
  # Test input sequence containing all valid codons
  expect_equal(translate_rna(c("AUG", "GCC", "AUG", "GCG", "CCC", "AGA", "ACU", "GAG", "AUC", "AAU", "AGU", "ACC", "CGU", "AUU", "ACG", "GGU")),
               "MAMAPRTEINSTRITG")
  # Test input sequence containing both start and stop codons
  expect_equal(translate_rna(c("AUG", "GCC", "AUG", "UAG")), "MAM_")
})
