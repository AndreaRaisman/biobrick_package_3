test_that("order_codons function correctly orders RNA sequence into codons", {
  # Test input sequence with length divisible by 3
  expect_equal(order_codons("AUGGCC"),
               c("AUG", "GCC"))

  # Test input sequence with length not divisible by 3
  expect_equal(order_codons("AUGGCCAUGTT"),
               c("AUG", "GCC", "AUG"))

  # Test input sequence with only one codon
  expect_equal(order_codons("AUG"), "AUG")
})
