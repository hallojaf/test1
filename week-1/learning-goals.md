# Learning Goals: Phase 1 > Week 1 [Ruby]

*Goals are broken into three stages of "mastery" using the [Japanese concept of Shuhari](http://en.wikipedia.org/wiki/Shuhari)*.

## Overall goals for the week

### Understand principles of language structure and execution

**Shu**: I am aware of the basic components of programming (variables, conditionals, looping, methods, data types) and can identify each of them when reading a program.

**Ha**: I can write basic programs to solve for specific tests or evaluation conditions, e.g. "write a method `mean()` which takes an array of integers and returns the mean: `mean([3,6,8]) => 5.66667`.

- Given a set of hard-coded examples (aka "driver code", tests, etc.), I can build programs to solve them.

**Ri**: I am fluent in the syntax of Ruby and am able to translate a verbal specification or user story into a functional  program.

- I can think creatively about problem solving and can identify and compare multiple solutions.
- I can read a program and evaluate the code in my head, easily identifying areas of confusion or unknown tools/concepts.

### Write "driver code" to test and drive development

**Shu**: I understand that there are many reasons to "test" your code, and that a good sanity-check and guide for early stage development is writing "driver code" to provide explicit expectations.

- I recognize the difference between the "core" code of a program and code which exercises/evaluates that program.

**Ha**: I am able to build small test suites with descriptive output and clear indicators of passing tests.  My tests cover the majority of functionality of my code.

- I can create ruby statements that encapsulate an expectation and outputs a meaningful evaluation of methods and objects.
- I can recognize effective driver code and can infer the behavior and structure of the variables, methods, and objects accessed.

**Ri**: I can use "Error-Driven Development" to pre-define program behavior and guide development.

- I can define an expectation for a program or method and follow the methodical process of testing for false, implementing the feature, testing for "true", and creating the next expectation.  (Red, Green, Refactor in TDD speak)
- I understand how EDD and TDD are linked, and how this process optimizes for developing incrementally and quickly reaching a stable minimum viable product.

### Debug methodically and effectively

**Shu**: I can do simple debugging and am aware that there are tools and methods for debugging and that the best programmers are the best debuggers.

- I am able to identify where the error is, decipher the error message, and infer the likely source of the error

**Ha**: I know a methodology for debugging: repeating the error, reading the error, Googling the error, following the stack trace, checking log files or printing to the console (visualize the state).

- I am able to use puts statements to view variable states and method returns to decipher non-obvious bugs
- I am able to immediately recognize a good percentage of common error messages, know the solution, and be able to explain succinctly why the error occurred
- I am able to create a succinct description of an error that will yield accurate search results.

**Ri**: I can debug efficiently and effectively using a variety of tools: error logging, setting breakpoints, interacting with the console, effective research.

- I am able to use a debugging tool to stop the program during runtime, access variable states, and step through line by line
- I have knowledge of multiple different methods to zero in on non-obvious bugs (including debuggers, sniper commenting, consoles (sqlite, rails console), etc)

### Articulate algorithm design in multiple formats (pseudocode, image, verbal, plain english, etc.)

**Shu**: I understand the importance of abstracting an accurate mental model of a process, and using it as a map to develop a solution in code.

- I can recognize models that are accurate models for a problem and realize that models will always have a limitation in their approximation of the problem.

**Ha**: I understand how to arrive at an abstract model by breaking a problem down into it's constituent parts.

- I understand how to abstract a pattern for a model after identifying repetition in code and relationships in data.
- I am able to choose appropriate test cases for a problem, and use them to create a more abstract general design.

**Ri**: I am able to recognize the optimal format for can create abstract models that are optimized for a particular particular

- I can translate between different modes of modeling easily and use the differences to deepen my understanding of a problem.
- I can quickly identify edge cases that uncover the nuances of the problem, and test the efficacy of my models appropriately.
