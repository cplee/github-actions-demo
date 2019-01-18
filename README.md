# Overview
Simple Node.js application to demonstrate the use of GitHub Actions

# Look Ma, no Makefile!
All the tasks necessary for testing, building and deploying this code is already defined in `.github/main.workflow` so why would you want to also create a `Makefile` for local development?  Now you can use [act](https://github.com/nektos/act) to run the actions locally!

Try these:

* `act -a lint` - run the linter
* `act -a test` - run the linter
* `act` - run the the entire pipeline
* `act -l` - view the execution graph

