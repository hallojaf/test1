# Learning Goals: Phase 1 > Week 2 [Object-Oriented Programming]

*Goals are broken into three stages of "mastery" using the [Japanese concept of Shuhari](http://en.wikipedia.org/wiki/Shuhari)*.

## Overall goals for the week

### Translate specs or user stories into an object-oriented application

**Shu**: I know what a user story is. I can identify when a program satisfies its specifications.

**Ha**: I am able to parse a user story and extract a loose design of the objects and their behavior and data within a system. I can write driver code to exercise the stories and develop a program to satisfy the driver code.

**Ri**: I can work in a clean loop of writing my own user stories, translating into driver code, building the source code, and then repeating. I know how to keep code flexible, how to build an MVP and how to avoid feature creep.

### Understand the object model in Ruby

**Shu**: I am aware of the basic vocabulary of objects in Ruby: class, module, instance, inheritance, composition, instantiation, method lookup, etc. I know that an object is an encapsulation of behavior and state, although I may not know exactly what that means.

**Ha**: I can identify and describe the difference between: classes and modules; instance methods and class methods; inheritance and composition. I can build programs that implement each of these concepts. Given an object or class, I can correctly enumerate the data (variables, constants) and methods available to it.

**Ri**: I know how the method lookup chain works. I can debate the appropriateness of variable types (instance, class, global, etc.). I know what an eigenclass is and how to use it.

### Appropriately use classes, modules, inheritance, composition (good OO design)

**Shu**: I am aware that there are tradeoffs and costs/benefits to using different ways of structuring the objects in a program.

**Ha**: I understand how to implement inheritance, modules or simple composition to create relationships between classes.  I understand the syntax and rules involved.  I have a general idea of the appropriate circumstances to apply each.

**Ri**: I can organize my classes and modules into appropriate inheritance trees or compositional structures, and recognize what the optimal structure is easily. My code is namespaced and loosely coupled.

### Defend and apply best practices such as the single responsibility principle and decoupling

**Shu**: I understand that classes, just like methods, should have a single responsibility, and can recognize when code is not following this best practice.  I understand the general principle of decoupling and understand the Object Oriented benefits.

**Ha**: I can apply OO best practices to my code and reap the benefits.  My classes and methods are honed to a single responsibility, and I understand how to apply decoupling principles such as "What vs How", "Tell, Don't Ask" and the Law of Demeter.  I understand that OO principles can be applied on a broader scale and are intrinsic to design patterns such as MVC.

**Ri**: I can easily apply OO principles to objects and methods as well as within larger contexts to enforce MVC.  I can show examples of OO principles in action and explain why they are important.  I can recognize OO principles in frameworks such as Rails and Sinatra, and could apply them to create my own custom frameworks.
