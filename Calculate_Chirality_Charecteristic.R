## This is a function written in R to calculate the Chirality Characteristic.


chiChar <- function(atom_table) {
  
  # Requires atom_table with rows corresponding to ordered reference
  # points and columns x,y,z specifying the corresponding cartesian coordinates.
  # See README.md for details.
  
  # Returns Chirality Charecteristic
  
  # First calculate separation vectors
  x_sep <- rep(0, length(atom_table$x) - 1)
  y_sep <- rep(0, length(atom_table$x) - 1)
  z_sep <- rep(0, length(atom_table$x) - 1)
  for (i in 1:(length(x_sep))) {
    x_sep[i] <- atom_table$x[i+1] - atom_table$x[i]
    y_sep[i] <- atom_table$y[i+1] - atom_table$y[i]
    z_sep[i] <- atom_table$z[i+1] - atom_table$z[i]
  }
  
  # Calculate normalization denominator
  sum_dist <- 0
  for (i in 1:(length(x_sep) - 2)) {
    sum_dist <- sum_dist + ( (x_sep[i]^2 + y_sep[i]^2 + z_sep[i]^2)^(1/2) *
                               (x_sep[i+1]^2 + y_sep[i+1]^2 + z_sep[i+1]^2)^(1/2) *
                               (x_sep[i+2]^2 + y_sep[i+2]^2 + z_sep[i+2]^2)^(1/2) )
  }
  
  # Calculate numerator, i.e. the scalar-triple-product chirality measure 
  res <- 0
  for (i in 1:(length(x_sep) - 2)) {
    res <- (res + (x_sep[i]*y_sep[i+1] - x_sep[i+1]*y_sep[i])*z_sep[i+2]
      + (y_sep[i]*z_sep[i+1]-y_sep[i+1]*z_sep[i])*x_sep[i+2]
      + (z_sep[i]*x_sep[i+1]-z_sep[i+1]*x_sep[i])*y_sep[i+2] )
  }
  
  return(res/sum_dist)
}
