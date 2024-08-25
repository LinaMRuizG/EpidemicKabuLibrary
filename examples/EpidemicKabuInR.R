#Install the reticulate Package
install.packages("reticulate")

#Load the reticulate Package
library(reticulate)

#Configure Python Environment
use_python("/usr/bin/python3")

# Check the Python configuration
py_config()

# Install numpy in the Python environment
py_install("numpy")

# Import the Python package
np <- import("numpy")

reticulate::py_last_error()

