#' DNA complementary function
#'
#' This function returns the complementary sequence for DNA or RNA
#'
#' @param seq The DNA or RNA sequence
#' @param minimal Return the lexicographical minimal sequence? Use logical. Default: TRUE
#'
#' @return The complementary sequence

#' @rdname canonical
#' @export
canonical = function(seq, minimal = TRUE){
  if (!is.character(seq)){
    stop(paste("Expecting a string. Was given", typeof(seq)))
  }
  seq = toupper(seq)
  if (!str_detect(seq, '^[ACGT]*$')){
    stop(paste("Expecting a DNA sequence consisting of only A, C, G, T"))
  }

  complement = complementary(seq)

  if (minimal){
    return(min(seq, complement))
  }
  else{
    return(max(seq, complement))
  }
}
