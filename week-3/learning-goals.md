# Learning Goals: Phase 1 > Week 3 [Databases]

*Goals are broken into three stages of "mastery" using the [Japanese concept of Shuhari](http://en.wikipedia.org/wiki/Shuhari)*.

## Overall goals for the week

### Design a relational database to represent collections of entities and the relationships between them

**Shu**:
I understand simple database relationships including one to many, many to many, and one to one.  I understand that fields in the DB have specific data types and how to assign them.  I can apply proper naming conventions for my tables and columns. I can create an example of a database table in graphic or spreadsheet form.

**Ha**:
I understand how to model more complex relationships with multiple tables and constraints.  I can easily translate user stories into database schemas.  I understand what normalization is, and why it's important.  I can identify potential redundancies in a schema and reason how the redundancy can be eliminated.

**Ri**:
I can generate large complex schemas following user stories and nuanced constraints.  I know how to enforce complex constraints within the database, either by embedding into the schema or with ruby manipulation, and explain the pros and cons of each.  I know how to optimize databases for further requirements like speed instead of only space considerations.

### Write SQL queries to extract desired information from a database

**Shu**: I can write simple `SELECT` statements to extract data from one or more fields on a single table. I know the syntax for the `SELECT`, `FROM`, `WHERE`, `LIMIT`, and `ORDER BY` keywords.

**Ha**: I can write queries against one or more related tables using `INNER JOIN`. I can use `GROUP BY` and `HAVING` to aggregate result sets. I know how to use basic aggregate functions such as `COUNT()` and `SUM()`.

**Ri**: I can perform complex queries against multiple tables, including sub-select statements and both `INNER` and `OUTER` `JOIN` clauses. I understand the difference between the different types of `JOIN` statements and can identify which to use given a desired result.

###Understand how to connect Ruby programs to a database using both hand-written SQL and an ORM like ActiveRecord

**Shu**: I understand that databases can be manipulated from within ruby code and how to run SQL statements using the sqlite3 gem. Specifically, I understand how to create a database object and use the `execute` method to pass a string that represents a query or a schema structure.

**Ha**: I understand how to access a database and link the tables to class structures. I understand how the sqlite3 gem's `execute` method is structured and know how to pass multiple arguments to bind parameters and protect against sequel injection.  I find the Bobby Drop Tables [cartoon](http://xkcd.com/327/) funny. I understand why ORM methods are structured primarily as class methods and how they work under the hood.

**Ri**: I understand why ORM's exist on a fundamental level.  I see the potential repetition that arises when multiple classes are implemented with hand written SQL.  I can refactor a redundant hand-written SQL program into an abstracted ORM and understand the met programming techniques involved.


### Describe what an Object-Relational Mapper (ORM) is and how it works on a high level

**Shu**: I understand the purpose of an ORM and the function it plays in an application. Given a database schema, I could sketch out an appropriate object model in Ruby and vice-versa.

**Ha**: I can work with a pre-built ORM such as ActiveRecord to execute basic queries using methods such as `select`, `where`, `order`, `limit`, and `join`. I know what kind of SQL these commands generate and have a rough understanding of how the query results are translated into a collection of zero or more Ruby objects.

**Ri**: I am able to build my own ORM from scratch. I can explain each level of the software and compare/contrast various approaches to solving the problem.
