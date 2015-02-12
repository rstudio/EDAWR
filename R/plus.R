
#' Vectorized addition with na.rm
#' 
#' \code{plus} adds together multiple vectors in element-wise fashion, 
#' so \code{plus(a, b, c)} would be similar to \code{a + b +c}. 
#' Unlike \code{+}, \code{plus} takes an \code{na.rm} argument to handle 
#' NA behavior.
#' 
#' @param ... a set of vectors. Each vector should be numeric, integer, or coercible to numeric.
#' na.rm logical. Should missing values (including NaN) be omitted from the calculations?
#' 
#' @examples 
#' a <- c(NA, 2, 3)
#' b <- c(1, NA, 3)
#' c <- c(1, 2, NA)
#' plus(a, b, c)
#' plus(a, b, c, na.rm = FALSE)
#' 
#' @export
plus <- function(..., na.rm = TRUE) {
  rowSums(as.data.frame(list(...)), na.rm = na.rm)
}