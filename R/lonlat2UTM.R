#' Convert lon and lat into integer
#' @description Converts longitute and lattitude values to an integer to convert further into UTM
#'
#' @param lonlat Numerical vector with lon and lat, like c(50.10267, 8.74782)
#'
#' @return integer
#' @export
#'
#' @examples
#' lonlat2UTM(c(50.10267, 8.74782))
lonlat2UTM = function(lonlat) {
  utm = (floor((lonlat[1] + 180) / 6) %% 60) + 1
  if(lonlat[2] > 0) {
    utm + 32600
  } else{
    utm + 32700
  }
}
