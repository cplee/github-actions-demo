workflow "test-and-deploy" {
  on = "push"
  resolves = "deploy"
}

action "install" {
  uses = "docker://node:11.6.0"
  args = "npm install"
}

action "test" {
  uses = "docker://node:11.6.0"
  args = "npm test"
  needs = ["install"]
}

action "lint" {
  uses = "./.github/actions/jshint"
  needs = ["install"]
}

action "branch-filter" {
  needs = ["test","lint"]
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "deploy" {
  needs = ["branch-filter"]
  uses = "actions/bin/sh@master"
  args = ["env"]
  secrets = ["PHONY_SECRET"]
  env = {
    PHONY_ENV = "foo"
  }
}
