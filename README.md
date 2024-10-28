# R-local-dev

Package for local development of all things R in VEuPathDB.

<br>

# Quick start - work on one VEuPathDB R Package
Let's say we wanted to work on the [veupathUtils](https://github.com/VEuPathDB/veupathUtils) package.

0. Clone the `veupathUtils` in this directory, so that the final organization looks like
```
 R-local-dev
  ├──veupathUtils
  ├──Dockerfile
  ├──Makefile
  └── ...
```

  
1. Run `make build` to build the docker image that contains all packages necessary for development.
2. Run `make start-shell` to start an interactive R session within the development container. R should start automatically and the output should end with something like the following
```
Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>
```
3. Now we're ready to load our package. The function `loadDevPackages` will both load the package of interest and install VEuPath dependencies if they exist. If we want to work on veupathUtils, for example, run
```
loadDevPackages('veupathUtils')
```


4. Make changes to the package, reload changes with 
```
load_all('veupathUtils')
```
5. Once you're happy with the changes, run all the tests (defined in the `tests/testthat` folder of any package) using 
```
devtools::test('veupathUtils')
```
 Alternatively, run all the tests in a particular file (for example 'test-correlation.R') using 
 ```
testthat::test_file('veupathUtils/tests/testthat/test-correlation.R')
 ```
 
6. All done? Quit using `quit()`.

