test_that("DNA sequence creation works", {
  # Test for a DNA sequence of length 10
  dna_seq_1 <- dna_create(10)
  expect_match(dna_seq_1, "^[ATGC]{10}$")

  # Test for a DNA sequence of length 100
  dna_seq_2 <- dna_create(50)
  expect_match(dna_seq_2, "^[ATGC]{50}$")

  # Test for a DNA sequence of length 1000
  dna_seq_3 <- dna_create(100)
  expect_match(dna_seq_3, "^[ATGC]{100}$")
})
