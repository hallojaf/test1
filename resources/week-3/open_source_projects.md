# Open Source Projects

## Github Workflow

### Setup

1. Create a repository in your cohort organization with: [README file](#readme) and a [license](http://www.slideshare.net/CodeMontage/writespeakcode-open-source-licenses)
* Create skeleton code -- files with empty classes, or gem skeleton -- including [CONTRIBUTING.md](#contributing.md) file
* Fork the repository to your Github account
* Clone the repository *in your account* to your computer
* Add a "remote" (link) to the cohort repository

```
git remote add upstream https://github.com/COHORT_ORG/PROJECT_NAME
```

#### README
README should contain the following:
* Name of project
* Team names
* Description of project
* How to install or use the code

#### CONTRIBUTING.md
This file should outline your agreements on [Workflow](#pull-request-workflow), including who merges pull requests, and code style.

### Pull Request Workflow

**Make sure to set your git user and email so you get credit for your work**

1. Create a branch named by the feature you are working on
* Write Code
* Commit your code and write a [good commit message](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
* Push your branch and changes to your Github repository
* Create a Pull Request to your cohort organization

### Code Review Workflow


1. Another team mate reviews the pull request and write code comments on Github
2. You make the desired changes (using the [Pull Request Workflow](#pull-request-workflow))
3. Repeat #1-2 until teammate has no more changes that need to be made

**Team should choose who merges Pull requests: code writer or the reviewer.**

### Getting changes

You'll need to get changes that other pairs.  Use the `upstream` remote that we created earlier.

```
git pull upstream master
```


## What should you work on
Whatever you want! Open Source is [fun, experimental, and playful](https://speakerdeck.com/holman/open-source-misfeasance) too!

We know how to parse HTML and XML using [Nokogiri](https://github.com/sparklemotion/nokogiri)

