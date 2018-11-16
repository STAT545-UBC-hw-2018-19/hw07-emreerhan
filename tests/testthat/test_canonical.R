context("Taking the canonical sequence")

test_that("Testing if the complement function works", {
  expect_equal(complementary("ACGT"), "TGCA")
})

test_that("A simple test", {
  expect_equal(canonical("ACGT"), canonical("TGCA"))
})

long_seq = 'ACGTCGATCGATGCTAGCTAGCTAGTCGACTATCAGTAG'
test_that("Testing complementary sequences", {
  expect_equal(canonical("ACGT"), canonical("TGCA"))
  expect_equal(canonical(long_seq), canonical(chartr("ATGC", "TACG", long_seq)))
  expect_equal(canonical(long_seq, minimal = FALSE), canonical(chartr("ATGC", "TACG", long_seq), minimal = FALSE))
})
