#' DNA complementary function
#'
#' This function returns the complementary sequence for DNA or RNA
#'
#' @param seq The DNA or RNA sequence
#' @param dna Is it a DNA sequence, or RNA? Use logical. Default: TRUE
#'
#' @return The complementary sequence

#' @rdname complementary
#' @export
complementary = function(seq, dna = TRUE){
  if (!is.character(seq)){
    stop(paste("Expecting a string. Was given", typeof(seq)))
  }
  seq = toupper(seq)
  if (!stringr::str_detect(seq, '^[ACGTU]*$')){
    stop(paste("Expecting a DNA or RNA sequence consisting of only A, C, G, T, U"))
  }
  if (dna){
    complement = chartr("ATGCN", "TACGN", seq) # chartr maps characters to characters. We use this to determine the complementary basepairs
  }
  else{
    complement = chartr("AUGCN", "UACGN", seq)
  }
  return(complement)
}
