# Just a place to try some things out

# Where are we?
getwd()
dir()

# Let's develop in veupathUtils
setwd('veupathUtils')
devtools::load_all() # Loads the package in the current directory.
# loadDevPackages('veupathUtils') # This is our fancy helper. Not really necessary unless you're developing in multiple packages

# And test it
setwd('veupathUtils')
devtools::test()

# Check out our test data.
head(testCountData)


# Make some changes

# Document and reload
devtools::document() # Not necessary to run every time. But it will update NAMESPACE which handles exports
devtools::load_all()

# Test changes
testthat::test_file("tests/testthat/test-class-CountDataCollection.R")
