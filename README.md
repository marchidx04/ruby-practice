# Ruby

## What is Ruby?

### Ruby

- 루비는 **객체 지향** 프로그래밍 언어이다. 
- 루비는 프로그래머 생산성에 초점을 맞춰 문법이 다른 언어에 비해 매우 심플하다.

### OOP(Object-Oriented Programming) 이란?

- 루비는 객체 지향 프로그래밍 언어이고, 루비내 모든 것이 객체이다.  
  - 객체는 데이터를 담고,  데이터 구조 형태라고 할 수 있다.

###  class 기반 프로그래밍

- 현실 세계를 반영한 클래스는 두 가지 요소를 가지고 있다.
  - 상태, 행동
- 클래스 안에 변수를 선언하면 이를 '상태(인스턴스 변수)'라 하고, 함수를 선언하면 '메서드(행동)'이라 하낟.
  - 메서드는 클래스 내에 행동에 속하는 부분으로 특정한 작업을 수행하는 단위이며 매개변수로 값을 받을 수 있고, 값을 받지 않아도 된다.
- 클래스에는 접근 제어자가 있어 각가의 접근 제어자는 모두 다른 접근 권한을 가지고 있다. 
  - `public`: 모든 곳에서 접근 가능
  - `protected`: 같은 패키지에 있는 클래스와 상속 관계에 있는 클래스만 접근 가능
  - `private`: 현재 클래스에서만 접근 가능
- 루비에서 인스턴스 변수, 클래스 변수는 항상 private이다. 따라서 메서드를 통해서만 접근이 가능하다.
- 메서드의 기본 접근자는 public이다. (initialize 메서드는 예외로 항상 private이다.)


### 변수

- 클래스에서는 다양한 변수들을 사용할 수 있다.

#### 인스턴스 변수

- 인스턴스 변수는 클래스 안에서 선언된 변수로 변수명은 `@`로 시작한다.

```rb
class Book
  
  def initialize
    @title = 'Ruby'
  end

  def printTitle
    puts @title
  end
end
```

#### 클래스 변수

- 클래스 변수는 해당 클래스의 모든 객체(인스턴스)가 공유하며, 클래스 메서드를 통해 접근할 수 있다.
- 클래스 변수는 `@@`으로 시작한다.
- 클래스 변수는 사용하기 전에 반드시 **초기화**해야 한다.

```rb 
class Greeting
  @@name = 'World'

  def Greeting.hello
    puts "Hello #{@@name}" 
  end
end

Greeting.hello # Hello World
```


### 루비 시작하기

#### 화면에 텍스트 출력하는 메서드

|메서드|설명|
|--|--|
|puts|끝에 `\n`(LineBreak)와 함께 텍스트를 출력하는 메서드|
|put|끝에 `\n`없이 텍스트를 출력하는 메서드|
|p|위 메서드들 보다 좀 더 **기술적인** 표현으로 화면에 출력하는 메서드. 개발 중 디버깅할 때 유용|

#### 주석(Comments)

- 보통 주석을 사용할 때 hashtag(#)을 사용하여 작성한다.
- 여러줄의 주석을 남겨야할 떄 `=begin / =end`을 사용하지만 일반적으로 권장되지는 않는다.

### 배열과 해시

- 루비의 배열과 해시는 색인된 컬렉션(indexed collection)이다.
- 둘 다 키(key)를 이용해서 접근할 수 있는 객체 모음이다.
  - 하지만 해시에서는 키값으로 객체를 사용할 수 있지만, 배열은 정수만 사용할 수 있다는 차이점이 있다.

### nil

```rb
p nil.to_i # 0
```

- 많은 언어에서 nil(또는 null)은 아무 객체도 아님을 의미한다.
- 하지만 루비에서는 '아무것도 아님'을 표현하는 `하나의 객체`이다.
- 해시는 주어진 키에 해당하는 객체가 없을 때 기본적으로 `nil`을 반환한다.
- 해시의 기본값을 0으로 설정할 수도 있다.
  ```rb
  inst_section = {
    'cello' => 'string'
  }
  p inst_section['drum'] # nil

  histrogram = Hash.new(0) # 기본값은 0이다.
  p histrogram['ruby'] # 0
  histrogram['ruby']  = histrogram['ruby'] + 1
  p histrogram['ruby'] # 1
  ```

### 심벌

- 중요한 값을 정의해야하는 경우 상수를 사용한다.
  ```rb
  NORTH = 1
  EAST = 2
  SOUTH = 3
  WEST = 4

  walk(NORTH)
  look(EAST)
  ```
  - 루비에는 상수에 특정한 값을 대입하는 방법(값이 유일하기만 하다면) 보다 깔끔한 대안을 제공한다.
- 심벌은 미리 정의할 필요가 없다면 동시에 유일한 값이 보장되는 상수 이름이다.
  ```rb
  walk(:north)
  look(:east)

  def walk(direction)
    if direction == :noth
      # ...
    end
  end
  ```
- 루비에서는 해시의 키로 심벌을 사용하는 경우가 많다.
  ```rb
  inst_section = {
    :cello => 'string',
    :clarinet = 'woodwind'
  }

  inst_section = { # 위 해시의 키를 축약하여 표현 가능
    cello: 'string',
    clarinet: 'woodwind'
  }
  ```

## 클래스, 객체, 변수

- 루비에서 다루는 모든 것은 객체다.
  - 객체 지향 시스템을 설계할 떄 항상 제일 먼저 해야하는 일은 다루고자 하는 대상들의 특징을 파악하는 것.
  - 일반적으로 다루고자 하는 대상들이 속하는 형식은 완성된 프로그램에서 클래스로 만들어진다.
  - 그리고 각 대상은 이 클래스의 인스턴스가 된다.
- 클래스의 인스턴스를 생성할 때는 `new` 메서드를 사용한다.
  ```rb
  a_book = BookInStock.new
  another_book = BookInStock.new
  ```
- 생성된 객체들에는 어떠한 데이터도 저장되어 있지 않다.
  ```rb
  class BookInStock
    def initialize(isbn, price)
      @isbn = isbn
      @price = Float(price)
    end
  end
  ```
  - 이러한 문제를 해결하는 가장 좋은 방법은 `생성자 메서드`를 정의하는 일이다.
  - 새로운 객체를 만들기 위해 `BookInStock.new`를 호출하면 루비는 초기화되지 않은 객체를 메모리에 할당하고 new의 매개변수를 이용해 그 객체의 `initialize` 메서드를 호출한다. 즉, 객체의 상태를 초기화한다.
  - `@`는 인스턴스 변수를 선언할 때 사용한다.




---
---
---
---
---
---
---
---
---
---
---
---
---
---
---
---
---
---




# Ruby

## Contents

- [What is Ruby?](#what-is-ruby)
  - [What is object-oriented programming?](#what-is-object-oriented-programming)
  - [How to start Ruby](#how-to-start-ruby)
- [Getting Started](#getting-started)
  - [Methods to Output Text to Screen](#methods-to-output-text-to-screen)
  - [Arithmetic in Ruby](#arithmetic-in-ruby)
  - [Comments](#comments)
  - [Concatenation](#concatenation)
  - [Errors and Exceptions](#errors-and-exceptions)
- [Variables](#variables)
  - [What is a variable?](#what-is-a-variable)
  - [Variable Assignment](#variable-assignment)
  - [Variable Syntax](#variable-syntax)
  - [snake_case Formatting](#snake_case-formatting)
  - [Reserved Keywords](#reserved-keywords)
  - [Variables and Constants](#variables-and-constants)
  - [The NameError Exception](#the-nameerror-exception)
- [Object Methods](#object-methods)
  - [Methods](#methods)
  - [Method Invocation](#method-invocation)
  - [The NoMethodError Exception](#the-nomethoderror-exception)
  - [The nil Object](#the-nil-object)
  - [String Interpolation](#string-interpolation)
  - [The gets Method](#the-gets-method)
  - [The Class Method](#the-class-method)
  - [Object Conversion Methods](#object-conversion-methods)
- [Booleans and Predicate Methods](#booleans-and-predicate-methods)
  - [Intro to Boolean](#intro-to-booleans)
  - [Operations that return Booleans](#operations-that-return-booleans)
  - [Predicate Methods](#predicate-methods)
  - [Methods with Arguments](#methods-with-arguments)
- [Methods](#methods-1)
  - [Intro to Methods](#intro-to-methods)
  - [Parameters and Arguments](#parameters-and-arguments)
  - [Local Variables](#local-variables)
  - [Return Values](#return-values)
- [Blocks](#blocks)
  - [What is a block?](#what-is-a-block)
  - [Sample Integer Methods that use Blocks](#sample-integer-methods-that-use-blocks)
- [Conditionals](#conditionals)
  - [What is a conditional?](#what-is-a-conditional)
  - [The Syntax of an if Statement](#the-syntax-of-an-if-statement)

## What is Ruby?

- Ruby is an **object-oriented programming language**. We use a programming language to gibe a computer instructions to execute.
- Ruby was **first developed and released in 1995 by Yukihiro Matsumoto**, who goes by "Matz".
- Ruby **can be setup on all modern operating systems**(Windows, macOS, and Linux)
- Ruby is **focused on programmer productivity and simplicity**. Its syntax is much simpler than that of other languages.
- The drawback of the focus on programmer happiness is slower speed relative to other languages. Ruby is not slow, it's slower.
- **Ruby on Rails(or Rails)** is a popular web development framework built on top of Ruby.
- Rails was **developed by David Heinemeier Hansson (DHH)** while working at Basecamp, then released as an open source project.
- Ruby and Rails are different technologies. Ruby is a prerequisite for Rails.

### What is object-oriented programming?

- Ruby is an **object-oriented programming(OOP) language**. OOP describes a category of languages.
- The OOP paradigm views a program as a collection of objects that communicate with on another.
- **An object is a digital data structure**. It's a container that stores daata and provides ways to access and manipulate that data.
- In Ruby, **everything is an object**.

### How to start Ruby

- brew 설치
- brew install rbenv
- rbenv init
- touch ~/.zshrc
- open ~/.zshrc -e
- rbenv init에서 명령어 복붙하여 편집기에 복사
- rbenv install -L로 리스트 확인 가능
- rbenv install (버전)으로 설치

## Getting Started

### Methods to Output Text to Screen

- A **method** is a command or aciton in Ruby
- The **puts** method outputs text to the screen with a line break at the end.
- THe **print** method outputs text top the screen without a line break.
- The **p** method outputs text to the screen in a more "technical" representation. This is a good method when debugging while devleoping.

### Arithmetic in Ruby

- Ruby consists of different types of objects. An Integer is a different type of object than a Float.
- Ruby supports common arithmetic operations (addition, subtraction, multiplication, division, modulo) using symbols.

### Comments

- A hashtag(#) creates a comment, which is a line ignored by Ruby when it runs the file. Developers use comments to provide documentation, metadata, notes, jokes, etc.
- We can create multi-line comments with **=begin / =end** syntax but it's generally not recommended.

### Concatenation

- Concatenation refers to the process of combining two strings together.
- wWe use a `+` symbol to concatenate the strings.

### Errors and Exceptions

- Errors/exceptions happend when Ruby runs into a problem processing our code/logic. They are a normal part of programming.
- Ruby raises a `TypeError` exception when it receives an object that is not a valid type for an operation (such as adding a string to a number)

## Variables

### What is a variable?

- A **variable** is a name we assign to an object in our program. A variable is a feference to an object.
- Variables are somethimes called pointers or identifiers because they "point to" or "identify" objects.
- The variable itself is **NOT** an object. Is is a placeholder or name for an object.

### Variable Assignment

- We assign a value to a variable with the equal sign.
- Ruby interpretes the right side fo the equal sign first.

```rb
name = "Boris"
age = 31
cost = 3.99 + 4.99
```

### Variable Syntax

- Variable names should start with a lowercase letter or underscore (ie., name, age, _info)
- Variable names can only contain letters, numbers, or underscores.
- Variable names cannot contain spaces.
- Variable names are case-sensitive. Avoid using identical variable names with different capitalization.

### snake_case Formatting

- If a variable name includes multiple words, separate each word with an underscore (_).
- Developers call this format **snake_case** because it looks like a snake.

### Reserved Keywords

- There are 40+ reserved keywords in Ruby (such as puts and print).
- **Do NOT use these keywords as variable names.**

### Variables and Constants

- A **Variable** is a name we assign to a value in our program. The variable's value can change as the program runs.
- A **constant** is a name for a value that will not change over the program's execution. Use **ALL_CAPS** for constans.
- Choose a name, then write the equal sign, and the value on the right hand side.
- Ruby evaluates the right-hand side of an equal sign first. Thus, we can assign a variable or constant to the result of an evaluation.

### The NameError Exception

- Ruby raises a NameError exception when we reference a name that doesn't exist in the program. This includes variables and consetants.

## Object Methods

### Methods

- Objects have **methods**, which are commands we can send to the object.
- Objects have exclusive and shared methods. There are things only a String can do, things only an Integer can do, and things that both objects can do.
- The object that we invoke the method upon is called the **receiver**.

### Method Invocation

- Invoke a method by writing a dot and the method name.
- Ruby supports parentheses after the method name but the community advises against it.
- A method produces a **return value**, which is the final output of the method.
- Method chaining involves arranging a sequence (chain) of methods in order. A method may produce a new Ruby object, which will have its own set of methods.

### The NoMethodError Exception

- Ruby raises **NoMEthodError** exception when a method does not exist on an object.

### The nil Object

- The **nil** object represents emptiness, nothingness, the absence of a value.
- We can declare **nil** in line but usually we'll be receiving it as the return value of a method. **puts** is an example of a method that returns **nil***.

### String Interpolation

- String interpolation is the process of injecting content into a string. That content can be anything from a variable to a Ruby expression.
- Use a **hashtag** followed by opening and closing **curly braces**.

### The gets Method

- The **gets(get string)** method receices a string from a user via input.
- The entry will include the newline (\n) from the user's Enter press. Call the **chomp** method on a string to remove a newline character from its end.
- Use a variable to preserve the user's entry if you'd like to use it later.

### The class Method

- A **class** is a blueprint for an **object**. The class is an abstract template, the object(s) are concrete entities.
- The object is called an **instance** of the class. The process of creating an object is called  **instatiation**.
- The class method returns the class from which an object was made. For example, every string is an instance of the **String** class.

### Object Conversion Methods

- The **to_s** method converts an object to a string.
- The **to_i** method converts an object to a integer.
- The **to_f** method converts an object to a float.

## Booleans and Predicate Methods

### Intro to Booleans

- A **Boolean*** is a value that is either **true** or **false**.
- Ruby returns Booleans for logical expressions (true or false, yes, or no, on or off, etc).

### Operations that return Booleans

- The **quality operator(==)** checks if two objects are equal.
- The **inequality operator(!=)** checks if two objects are unequal.
- Ruby supports common mathematical operations like less than (<), less than or equal to(<=), greater than(>), and greater than or equal to (>=).

### Predicate Methods

- A **predicate** method(a.k.a a **Boolean** method) is one that returns a Boolean.
- Predicate methods conventionally end with a `?` in Ruby. The question mark is a valid character in a method name.
- We explored predicate methods like **odd?**, **even?**, **positive?**, **negative?**, and more.

### Methods with Arguments

- An **argument** is an input to a method invocation. It provides a value that the method uses when it runs.
- Methods can have no arguments or multiple arguments. The arguments's context depends on each specific method.
- Pass the arguments after the method invocation. Provide a comma and a space between two subsequent arguments.
- If a method does not accept arguments, exclude the parentheses. If a method accepts arguments, include the parentheses.

## Methods

### Intro to Methods

- A method is a procedure, a function, a sequence of steps ot follow.
- Methods encapsulate repeated logic/behavior so that we do not have to write it multiple times.
- Invoke methods by writing their name with an optional parentheses. Declaring a method is a different idea from invoking the method.
- Declare a method with the def keyword followed by a name. Add the end keyword. Any lines between def and end belong to that method. Indent them.

### Parameters and Arguments

- A **parameter** is a name for an expected input that will be provided to a method when it is invoked. Methods can have any number of parametes, including 0.
- An **argument** is the concrete value that we pass for a method's parameter when we invoke the method.
- When invoking a method, the number of arguments must equal the number of parameters.
- If a method includes noe or more parameters, I recommend adding parentheses in the method invocation.

### Local Variables

- A **local variable** is a variable declared within a method body. Is is "local" or "limited" to that execution context.
- **Local variables** exist only as long as the method is running.
- **Scope** refers to the "area" or "boundary" of the program where a name like a variable exists.
- A method body is a separate scope from the top-level Ruby file. A variable within a method body is a different one from a variable with the same name within the file.

### Return Values

- A **return value** is the final output of a method. It is what the method gives back to the main program.
- All Ruby methods must produce a return value (i.e., an object)
- The **return** keyword terminates a method and returns the evaluation/object on that line.
- Without a **return** keyword, Ruby will implicitly return the evaluation/object from the last line in the method.
- A method with no body returns nil

## Blocks

### What is a block?

- A **block** is a chunk of code that is associated with a method invocation.
- How a block operates will depend on how developers implemented the original method.
- A **block** can include block variables. The block variables's context will depend on the method.
- An argument is an object/value that we pass to a method invocation. A block is a procedure that we provide to a method invocation.
- Use `{}` for single-line blocks. Use `do/end` for multi-line blocks.

### Sample Integer Methods that use Blocks

- The **times** method executes the logic within the code block that number of times.
- The `upto` and `downto` methods accept an argument that represents the number to move towards (inclusive). The block specifies what to do on each iteration. The block variable is the current number.
- The `step` method iterates to a given value (the first argument) in intervals/steps (the second argument). The block specifies what to do on each iteration. The block variable is the current number.

## Conditionals

### What is a conditional?

- The code we've written so far executes no matter what.
- Programming is about defining the paths that a program can take.
- A conditional is a statement that controls if a piece of code executes.
- A condition evaluates to a Boolean: true or false.
- If the condition is met, the code executes. Otherwise, it is skipped.

### The Syntax of an if Statement

if condition  
  \# code to execute if true.  
end

## Array

### What is an array?

- Everthing in Ruby is an object - intergers, floats, strings, Booleans, etc.
- An array is an ordered collection of objects. It can be thought of as a list.
- The array itself is an object. It acts as a container for other objects.
- An array is created with a pair of square brackets.

## Object Pointers and Object Copies

### Variables and Objects

- All Ruby objects live on the **heap**, an area of computer memory
- Ruby creates space for each object on the heap
- An object returns a reference to its memory address when it is created
- Variables do not hold the object; they hold the reference to the object
- If the object si the house, the variable is the address

### Pointers to the Same Object

- If a variable is assigned to another variable, it will point to the same object
- The variable becomes an **alias** for the object
- Thus, any modification to the object will be reflected in both variables
- The `object_id` method returns an object's location in memory

## Hashes

### What is a hash?

- A **hash** or a **hash map** is a data structure that stores key-value pairs.
- Hashes are called dictionaries, maps, or associative arrays in other languages.
- A hash object connects unique identifiers (keys) to values.

### Rules of the Hash

- Hash keys and hash values can be objects of any type.
- Hash keys must be unique (no duplicates).
- Hash values can contain duplicates.
- Hashes should be treated as unoreded. Values are extracted by their key, not by their order.

## Blocks

### What is a block?

- A **block** is a collection of code to be executed.
- Blocks must be attached to a method call.
- Blocks alter the execution of the method.
- A block is **not** an argument / parameter to the method.
- Blocks can be defiend wtih `{ }` or `do end`.
- A block can get or update the value of local variables within the block.

### Methods vs Blocks

- Methods can be invoked over and over.
- In comparison, a block will only be called once, then disappear.
- A block isolates actiosn away from the method.

## Classes

### Why do we need classes?

- Ruby's built-in objects likes **Arrays** or **Hashes** cannot represent everything
- What if we need to represent Users or Cars or Invoices?
- The goal of object-oriented design is to use code to model real-like things as classes.
- An **object** si a custom container for data. It is made from a class.
- Object group functionalities into a single unit


### Object Attributes and Methods

- **Instance variables** (attributes) are variables that belong to the object.
- **Attributes** provide information about the object's current state.
- **instance methods** interact with the object. They also belong to the object.
- **Encapsulatoin** is a OOP concept that restricts direct access to an object.

### Classes and Objects

- A **class** s the blueprint, pattern, template, or outline for an object.
- An **object** is an instance of the class. It is created from the class.
- **Instantiation** is the process of creating an object from a class.
- A class is called an **abstract type** because it hides the complexity of interacting with the data, much like a method abstracts the complexity of a process.

### The .class Method on Objects

- Objects receive their structure of design from **classes**.
- The .class method returns the class the object was constructed from.
- The object's class is itselft another object.

### the `.superclass` Method on Classes

- A `superclass` is the class that a current class inherits from. Inheritance follows an "is-a" structure.
- The `.superclass` method is called on a class. It returns the parent class that the current class inherits from.
- The class that inherits from the superclass is called the **subclass**.
- Every class in Ruby (except BasicObject at the top of the hierarchy) has at least one superclass.

### The `.ancestors` Method on Classes

- A `superclass` is the class that a current class inherits from.
- The `.ancestors` method can also be called on a class. It returns an array of all superclasses that the class inherits from.

### Review of Methods

- **Public methods** allow interaction with an object.
- **Public methods** can be called by any other object.
- **Private methods** can only be called within the object.
- **Private methods** cannot be invoked by another object.
- **Private methods** cannot be called with an explicit receiver --only the current object is able to receive the method.

### What is a protected method?

- Protected methods can be invoked only. by objects of the same class.
- Procted methods can be called within the same family of objects.
- Protected methods are used to compare objects of the same class.

### What is a class variable?

- Some pieces of data extend beyond the scope of a single object.
- A **class variable** solves the issue of data duplication across instances.
- A **class variable** belongs to the whole class rather than to one object.
- Class variables store information that does not pertain to an instance.

### What is a class method?

- A **class method** is a method available on the class rather than an instance.
- Class methods contain functionality that does not involve one instance.
- A class method can be called even if objects / instances do not exist.
- The new method that we call upon a class to create an object is an example of a class method.

## Class Variable and Class Method Syntax

- Class variables begin with the `@@` sigil.
- Instance variables begin with a single `@` sigil.
- Class methods are prefixed with the `self` keyword.
- Be careful! In an instance method definition, self refers to the object.

## Intstance Variables

### What is an instance variables?

- Instance variables are variables that belong to a specific object.
- Instance variables define the object's properties or attributes.
- The instance variables make up the object's **state**.
- Each object can have a custom state.
- The state of an object can change over time.

### Define an Instance Variable

- Instance variables begin with the `@ symbol`(i.e @name)
- The `@` symbol is called a **sigil**, a special character that denotes the variable's scope.
- Without the `@` sigil, the variable would be interpreted as a local variable to the method it is used in.

### The initialize Method

- The initialize method is called immediately when an object is instantiated from a class with the new method.
- The initialize method offeres an opportunity to assign values to instance variables in order to define the object's state.
- If the initialize method is not defined in the class, each object is initialized with no state (like the Gadget objects in the previous lesson).
- The assignment of values to instance variables does not mean the values have to stay constant. The object's state **can** be altered later.  

## Module

### What is a module?

- A **module** is a toolbox or container of methods and constants.
- Module methods and constants can be userd as needed.
- Modules create namespaces for methods with the same name.
- Modules cannot be used to create instances.
- Modules can be **mixed into** classes to add behavior

### Syntax and Style

- Module names are written in UpperCamelCase.
- Constants in modules should be written in ALL CAPS.
- Access module methods with the dot operator (.)
- Access module constants with the `::` symbol
- The `::` symbol is called the **scope resolution operator**.

### Why mix in modules to classes?

- Different classes need similar functionalities.
- For example, Sring and Numeric both need <, <=, >, >=, and ==
- However, neither class can be represented as a subclass of the other
- Duplication of methods across classes viloates the DRY principle

## Inheritance

### What is inheritance?

- Inheritance is a way for a class to obtain all methods from another class.
- Inheritance avoids duplicate code across multiple classes.
- The class inherited from is called the **superclass** or **parent class*.
- The class that inherits is called the **subclass** or **child class**.
- Ruby only supports single inheritance. A class can only inherit from one other class.
- The **subclass** is a type of the **superclass**. This is called an `is-a` relationship.
- The relationship does not apply in reverse.
- Thus, the subclass can be called a subset of the superclass.
- A Car **is a** Vehicle but a Vehicle is not guaranteed to be a Car.
- Subclasses are followed by a `<` symbol and the name of the superclass.
