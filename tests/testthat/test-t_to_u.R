test_that("t_to_u function correctly converts T to U", {
  # Test input sequence with only T's
  expect_equal(t_to_u("TTTTTT"), "UUUUUU")

  # Test input sequence with only U's
  expect_equal(t_to_u("UUUUUU"), "UUUUUU")

  # Test input sequence with mixed nucleotides
  expect_equal(t_to_u("ATTCG"), "AUUCG")

  # Test input sequence with no T's
  expect_equal(t_to_u("ACCGA"), "ACCGA")

  # Test input sequence with only T's and spaces
  expect_equal(t_to_u("T T T T T T"), "U U U U U U")
})
