#' @title Fix Missing Values inside of a Vector
#' 
#' @description Within this function, we will modify
#' the initial input vector by searching for
#' what the researcher specified as the missing 
#' value and instead subsitute it for R's
#' missing data type.
#' 
#' @param x A vector
#' @param value The value that denotes a missing value
#'              inside of the data.
#'              
#' @return A vector with missing values appropriately
#' typed.
#' 
#' @examples 
#' x = c(1,2, 3, -1)
#' 
#' code_missing(x) 
#' 
#' code_missing(x, value = 2)
#' @export
code_missing = function(x, value = -1L) {
  x[x == value] = NA
  x
}