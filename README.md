# Object-Oriented Design and Refactoring Patterns in Ruby

This project contains all the examples used in the respective course at Tuts+
Premium. Each example contains:

* Two code sample files, _before_ and _after_ refactoring;
* A test suite;
* A `Rakefile` with a test task.

  - To run the tests against the code sample _before_ refactoring, run
    `BEFORE=1 rake test`;
  - To run the tests against the code sample _before_ refactoring, run `rake
    test`;

## Course outline

### Object-oriented design

Before you start refactoring, it's important to grasp the basic but most
fundamental aspects of object oriented software development. These principles
will allow you to solve problems in an efficient, cost effective and
change aware fashion.

### Code Smells

Each item in the following list matches a code smell and contains a list of
possible refactoring patterns to solve it.

* **Duplicate code**

  - Extract Method
  - Pull Up Method
  - Form Template Method

* **Long method**

  - Extract Method
  - Replace Temp with Query / Replace Temp with Chain
  - Introduce Parameter Object / Preserve Whole Object
  - Replace Method with Method Object

* **Feature envy**

  - Extract Method + Move Method

* **Data clumps**

  - Extract Class
  - Introduce Parameter Object / Preserve Whole Object

* **Comments**

  - Rename Method
  - Extract Method
  - Introduce Assertion

* **Divergent change**

  - Extract Class
  - Inline Class
  - Move Method + Move Field

* **Primitive Obsession**

  - Replace Type Code with Polymorphism / Module Extension / State|Strategy
  - Replace Array with Object
  - Introduce Parameter Object

* **Conditionals (if/else, case/when)**

  - Introduce Null Object
  - Replace Type Code with Polymorphism
  - Extract Method + Move Method

### Refactoring Patterns

* [x] Extract Class
* [x] Extract Method
* [x] Form Template Method
* [x] Hide Delegate
* [x] Introduce Assertion
* [x] Introduce Null Object
* [x] Separate Query from Modifier
* [x] Move Field
* [x] Parameterize Method
* [x] Preserve Whole Object
* [x] Pull Up Method
* [x] Rename Method
* [x] Replace Array with Object
* [x] Replace Method with Method Object
* [x] Replace Temp with Query
* [-] Replace Type Code with Module Extension
* [x] Replace Type Code with Polymorphism
* [-] Replace Type Code with State/Strategy
