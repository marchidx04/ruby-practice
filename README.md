# Ruby

## 1. Ruby?

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


## 2. 루비 시작하기

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

### 블록과 반복자

#### 한 줄의 코드 블록

```rb
{ puts "Hello" }
```

#### 여러 줄의 블록

```rb
do
  club.enroll(person)
  person.socialize
end

# 메서드에 매개 변수가 있다면, 블록보다 앞에 써 준다.
verbose_greet("Dave", "loyal customer") { puts "Hi" }
```

#### yield를 포함하는 메서드

```rb
def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "Inthe block" }

# 실행 결과
# Start of method
# In the block
# In th e block
# End of method
```

```rb
def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}" }
```

### 반복자

- 루비에는 코드 블록을 반복자(iterator) 구현에 사용하기도 한다.
  - 반복자란 배열 등의 집합에서 구성 요소를 하나씩 반환해 주는 함수를 의미

```rb
animals =  %w( ant bee cat dog ) # 배열을 하나 만든다
animals.each {|animal| puts animal } # 배열의 내용을 반복한다.
```

## 3. 클래스, 객체, 변수

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

### p와 puts 비교

```rb
p BookInStock.new("isbn1", 3) # #<BookInStock:0x0000029e08a426c8 @isbn="isbn1", @price=3.0>
puts BookInStock.new("isbn2", "3.14") # #<BookInStock:0x0000029e08a41c78>
```

- p 매서드는 객체의 내부 상태를 출력한다.
- puts는 단순히 프로그램의 표준 출력에 문자열을 출력한다.
- 루비는 객체를 문자열로 나타내는 표준 메서드인 `to_s`가 준비되어 있다.

```rb
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

p BookInStock.new("isbn1", 3) # #<BookInStock:0x0000029e08a426c8 @isbn="isbn1", @price=3.0>
puts BookInStock.new("isbn2", "3.14") # ISBN: isbn2, price: 3.14
```
  - 인스턴스 변수들은 각 객체에 저장되며 이 객체에 정의되는 모든 인스턴스 메서드에서 참조 가능하다.
  
### 객체와 속성

- BookInStock 객체는 ISBN, 가격을 포함한 객체 내부적인 상태를 가지고 있다.
  - 이러한 객체의 내부 상태는 각 객체 내부에 저장된 정보로 다른 객체에서는 이 정보에 접근할 수 없다.
- BookInStock 객체에 대해 외부에서 찾을 수 있도록 구현하는 방법 중 하나는 접근자 메서드를 직접 구현하는 것이다.

```rb
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def isbn
    @isbn
  end
  def price
    @price
  end
end
```

- 접근자 메서드는 매우 자주 사용되므로, 루비는 이를 쉽게 정의해 주는 편의메서드를 제공한다.

```rb
class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end
```

### 쓰기 가능한 속성

객체 밖에서 속성을 설정해야하는 경우도 있다. 루비에서는 메서드 이름 뒤에 `=` 기호를 사용해 접근 가능한 속성에 대입 기능을 구현할 수 있다.

```rb
class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price=(new_price)
    @price = new_price
  end
end
```

- 루비에서는 이러한 대입 메서드를 만드는 간단한 표현을 제공한다. 값을 대입하는 메서드만 만들고 싶다면 `attr_writer`를 사용하면 된다.
- 일반적으로 인스턴스 변수의 값을 속성으로 읽는 것과 대입하는 것 모두 필요로 한다.
  - 루비는 이를 위해 메서드들을 한 번에 정의해주는 `attr_accessor` 메서드를 제공한다.

```rb
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end
```

### 가상 속성

속성에 접근하는 메서드가 단지 객체의 인스턴스 변수를 읽거나 대입하는 간단한 메서드일 필요는 없다.

```rb
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_int_cents
    Integer(price*100 + 0.5)
  end

  def price_int_cents=(cents)
    @price = cents / 100.0
  end
end

book = BookInStock.new("isbn1", 33.80)
puts book.price # 33.8
puts book.price_in_cents # 3380
book.price_in_cents = 1234
puts book.price # 12.34
puts book.price_in_cents # 1234
```

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

### 접근 제어

```rb
class MyClass
  def merthod1 # 기본값을 public
  end

  protected # 이제부터 선언한 메서드는 모두 protected
  
  def method2
  end

  private # 이제부터 선언한 메서드는 모두 private

  def method3
  end

  public # 이제부터 선언한 메서드는 모두 public

  def method4
  end 
end

class MyClass
  def mehod1
  end
  # ...

  public :method1, :method4
  protected :method2
  private :method3
end
```

- 클래스에 너무 깊이 접근하도록 허용하면, 우리의 애플리케이션에서 각 요소 간의 결합도(coupling)가 높아질 우려가 있다.
- 루비에서 객체 상태를 변경하는 방법은 메서드를 호출하는 것 뿐이다.
  - 객체의 상태를 망가뜨릴 수 있는 메서드는 노출해서는 안 된다.

#### public

- public 메서드는 누구나 호출할 수 있다.
- 아무런 접근 제어를 하지 안흔다.
- 루비에서는 메서드는 기본적으로 `public`이다. (예외적으로 `initialize`는 `private`이다.)

#### protected

- 그 객체를 정의한 클래스와 하위 클래스에서만 호출할 수 있다.
- 접근이 가계도상으로 제한되는 것이다.

#### private

- 이 메서드의 수신자는 항상 `self`이기 때문에 수신자를 지정해서 호출할 수 없다.
- 즉, 다른 객체의 `private` 메서드에서는 접근할 수 없다.

#### 루비와 다른 객체 지향 언어의 차이점

- 접근 제어가 동적으로 결정된다는 것.
  - 즉, 정적이 아니라 프로그램이 실행될 때 결정된다는 것이다.
- 따라서, 접근 위반 예외는 제한된 메서드를 실제 호출할 그 순간에만 발생하게 된다.

### 접근 제어를 활용한 예시

```rb
class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private

  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end

  public

  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amoount)
  end

  #...
end

savings = Account.new(100)
checking = Account.new(200)

trans = Transaction.new(chekcing, savings)
trans.transfer(50)
```

## 변수

```rb
person1 = "Tim"
person2 = person1
person1[0] = "J"
person3 = person1.dup

puts "person1 is #{person1}" # person3 is Jim
puts "person2 is #{person2}" # person3 is Jim
puts "person3 is #{person3}" # person3 is Tim
```

변수는 단지 객체에 대한 참조를 가지고 있을 뿐, 객체 자체를 담고 있지 않다는 사실을 확인할 수 있다.
- `person1`을 `person2`에 대입해도 새로운 객체는 생성되지 않는다.
- 단지 `person1` 객체에 대한 참조를 `person2`로 복사해서 person1과 person2가 같은 객체를 참조하도록 만들 뿐이다.

# 컨테이너, 블록, 반복자

## 배열

```rb
a = [1, 3, 5, 7, 9]
a[2, 2] = "cat" # [1, 3, "cat", 9]
a[2, 0] = "dot" # [1, 3, "dog", "cat", 9]
a[1, 1] = [9, 8, 7] # [1, 9, 8, 7, "dog", "cat", 9]
a[0..3] = [] # ["dog", "cat", 9]
a[5..6] = 99, 88 # ["dog", "cat", 9, nil, nil, 99, 88]
a[3] = [1. 2] # ["dog", "cat", 9, [1, 2], nil, 99, 88]

a.first # "dog"
a.first(1) # ["dog"]
a.last # 88
a.last(1) # [88]
```

- Array 클래스는 객체 참조를 컬렉션으로 저장한다. 각 객체의 참조는 배열에서 하나의 위치를 차지하며 이 위치는 정수로 표현된다.
  - 배열의 위치를 음이 아닌 정수로 지정하면 해당 위치의 객체를 반환하고 그 위치에 아무것도 없다면 `nil`을 반환한다.
  - 음수로 위치를 지정하면 배열의 뒤에서부터 위치를 계산해 해당하는 위치의 값을 반환한다.

## 해시

```rb
h = { :dog => 'canine', :cat => 'feline' }
h = { dog: 'canine', cat: 'feline' }
```

- 배열은 정수를 인덱스로 사용하는 반면에, 해시의 인덱스로는 `심벌`, `문자열`, `정규 표현식`, 심지어는 어떤 객체라도 사용할 수 있따.
- 해시에 하나의 값을 저장하고자 할 때 두 개의 객체가 필요하다.
  - 하나는 인덱스로 키와 하나는 이 키에 대응하는 값이다.

### 해시와 배열을 사용한 단어 출현 빈도 계산

```rb
def words_from_stirng(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0) # default: 0
  for word in word_list
    counts[word] += 1
  end
  counts
end

words = words_from_stirng("But I I I didn't didn't inhale, he said (emphatically) emphatically")
words_frequecy = count_frequency(words)
words_list = words_frequecy.sort_by {|key, count| count}

p words_list
```

## 블록과 반복자

```rb
for i in 0..4
  print i # 01234
end

words_list.each do |word, count|
  puts "#{word}: #{count}"
end

words_list.each { |word, count| puts "#{word}: #{count}" }
```

- 코드 블록을 통해 더 간결한 코드를 작성할 수도 있다.

### 반복자 구현하기

```rb
def fib_upt_to(max)
  i1, i2 = 1, 1 # 병렬 대입
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fib_upt_to(1000) { |f| print f, " " } # 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987

class Array
  def find
    each do |value|
      return value if yield(value)
    end
  end
end

puts [1, 3, 5, 6, 7, 9].find {|v| v*v > 30} # 7
```

### 열거자(Enumerable)

```rb
a = [1, 3, "cat"]
h= { dog: "canine", fox: "vulpine" }

enum_a = a.to_enum
enum_h = h.to_enum

enum_a.next # 1
enum_h.next # [:dog, "canine"]
enum_a.next # 3
enum_h.next # [:fox, "vulpine"]
```

- `to_enum` 메서드를 호출하여 루비의 내장 `Enumerator` 객체를 생성할 수 있다.
- 루비에서는 반복자가 컬렉션 내부에 있고, 새로운 값을 위해 **매번 yield**를 호출한다.
- 반복자를 이용하는 주체는 바로 메서드에 결합된 블록이다.

### 객체로서의 블록

```rb
class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(99) # The parameter is 99
```

- 블록은 객체로 변환할 수 있으며, 이 객체를 변수에 저장할 수 있고, 어딘가에 넘겨줄 수도 있으며, 나중에 호출할 수도 있다.
- 매개변수로도 사용할 수도 있다.
- 메서드를 정의할 때 마지막 매개 변수에 앰퍼센드(`&`)를 접두사로 붙이면 루비는 이 메서드가 호출될 때마다 코드 블록이 넘겨졌는지 찾아본다.
- 위 인스턴스 메서드에서 Proc 객체를 생성하고이를 인스턴스 변수에 저장하고, 다른 인스턴스 메서드에서 이를 호출하는 예제이다.
  - `proc` 객체에 대해 `call` 메서드를 호출함으로써 원래의 블록을 호출한다는 점에 주의할 필요가 있다!!
  - 많은 루비 프로그래머들이 이러한 방식으로 블록을 변수에 저장하며 이후에 다시 호출한다.
- 루비에서는 블록을 객체로 변환하는 내장 메서드를 두 가지 `lambda`와 `Proc.new` 두 가지를 지원한다.

### 블록은 클로저

#### 매개변수를 참조하는 Proc 객체

```rb
def n_times(thing)
 lambda { |n| thing * n }
end

p1 = n_times(23)
p1.call(3) # 69
p1.call(4) # 92
p2 = n_times("Hello ")
p2.call(2) # "Hello Hello "
```

- `n_times` 메서드는 매개변수 `thing`을 참조하는 Proc 객체를 반환한다.
  - 이 Proc 객체만이 thing에 접근할 수 있어 이를 `클로저`라고 한다.

#### 2의 제곱열을 반환하는 Proc 객체

```rb
def power_proc_generator
  value = 1
  lambda { value += value }
end

power_proc = power_proc_generator
power_proc2 = power_proc_generator

puts power_proc.call # 2
puts power_proc.call # 4
puts power_proc.call # 8
puts power_proc2.call # 2
```

- `power_proc`와 `power_proc2`는 다른 블록을 가지고 있으므로 같은 value를 참조하고 있지 않다.

### 대체 문법

```rb
def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 2,
    -> { puts "#{val} is small" },
    -> { puts "#{val} is big" }
end

# 0 is small
# 1 is small
# 2 is big
# 3 is big
# 4 is big
```

- lambda 문법을 보다 간결하게 작성할 수 있도록 `->` 형식을 지원한다.

#### 대체 문법 예제

```rb
proc1 = lamba do |a, *b, &block|
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end

proc1.cal(1, 2, 3, 4) { puts "in block1" }

proc1 = -> a, *b, &block do
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end

proc1.cal(1, 2, 3, 4) { puts "in block2" }

# a = 1
# b = [2, 3, 4]
# in block2
```

## 기능 공유하기: 상속, 모듈, 믹스인

### 상속과 메시지

```rb
class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

# 자식 클래스 생성
class Child < Parent
end

c = Child.new # Hello from #<Parent:0x007fcd59034c78>
c.say_hello # Hello from #<Child:0x007fcd59034908>

p Child.superclass # Parent
p Parent.superclass # Object
p Object.superclass # BasicObject
p BasicObject.superclass # nil
```

- BasicObject은 루비의 클래스 상속 구조에서 뿌리에 해당한다.
  - 루비 애플리케이션의 어떤 객체라도 부모의 부모의 부모의 뿌리를 찾아가다 보면 결국에는 BasicObject에 이른다.
- 이렇게 루비는 자기 자신에 정의되어 있지 않은 메서드를 자신의 부모 클래스에서 찾고,
  - 이렇게 부모 클래스가 더 이상 없을 때까지 메서드를 찾아나간다.

#### to_s 오버라이드

```rb
class Person
  def initialize(name)
    @name = name
  end

  def to_s
    "Person named #{@name}"
  end
end

p = Person.new("Michael")
puts p # Person named Michael
```

- puts 메서드는 인자에 대해 `to_s` 메서드를 호출한다.
- Person 클래스에 `to_s` 메서드가 없다면 루비는 Person의 부모 클래스인 Object에서 `to_s` 메서드를 찾는다.
- 루비 온 레일스를 사용한다면
  - 자신만의 컨트롤러 클래스들을 정의하기 위해 ActionController를 상속할 것이다.
  - 이를 통해 자신의 컨트롤러에서 ActionController의 모든 기능을 사용할 수 있으며
  - 추가적으로 사용자의 요청에 대응할 수 있는 고유의 핸들러를 정의할 수 있다.

### 모듈

모듈은 메서드와 클래스, 상수를 함께 하나로 묶는 수단이다.
모듈의 장점
- 모듈은 이름 공간(namespace)을 제공해서 이름이 충돌하는 것을 막아준다.
- 모듈은 믹스인(mixin) 기능을 구현하는데 사용한다.

#### 믹스인

이를 이요하면 많은 경우 다중 상속을 할 필요가 사라진다.

```rb
module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}: #{self.name})"
  end
end

class Phonograph
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class EightTrack
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

ph.who_am_i? # Phonograph (id: 60: West End Blues)
et.who_am_i? # EightTrack (id: 80: Surrealistic Pillow)
```

- Debug 모듈을 포함함으로써 Phonograph와 EightTrack 둘 다 `who_am_i?` 메서드를 이용할 수 있게 되었다.
- 여러 클래스가 하나의 모듈을 포함한다면 이 클래들은 모두 같은 모듈을 참조하게 된다.
  - 모듈의 메서드 정의를 수정한다면, 이 모듈을 포함하는 모든 클래스는 새로이 정의된 방식으로 동작할 것이다.

#### Comparable 믹스인

```rb
class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "#{@name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

# 이름 비교
if p1 > p2
  puts "#{p1.name}'s name > #{p2.name} name"
end

# Person 객체들의 배열 정렬
puts [p1, p2, p3].sort

# 결과
# Matz's name > Guido's name
# Guido
# Larry
# Matz
```

- Comparable 모듈 include하고 `<=>` 연산자가 정의되어 있으면 여섯 개의 비교 함수를 얻을 수 있다.
- 이를 통해 p1 > p2와 같은 비교가 가능해지고, Person 객체들을 순서대로 정렬하는 것도 가능해진다.

#### Enumerable 모듈

- Enumerable은 표준 믹스인으로 include하는 클래스의 each 메서드를 사용해 다양한 메서드를 구현할 수 있다.
- Enumerable에 정의된 메서드로는 inject 메서드가 있다.
  - inject 메서드는 컬렉션 맨 앞의 두 개의 요소에 대해 함수나 계산을 실행하고 그 결과를 가지고 세 번쨰 요소에 대해 다시 같은 연산을 실행하고, 이러한 과정을 컬렉션의 모든 요소에 대해 실행한다.

```rb
class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

vf = VowelFinder.new("the quick brown fox jumped")
p vf.inject(:+) # "euiooue"
```

## 메서드

### 메서드 예시

```rb
1.even? # false
2.even? # true
1.instance_of?(Fixnum) # true
```

- True나 False를 반환하는 메서드에는 이름 끝에 `?`를 붙이곤 한다.
- '위험'하거나 수신자의 값을 바꿔버리는 메서드는 이름이 느낌표(!)로 끝나기도 한다.

### 가변 인자 리스트

```rb
def varargs(arg1, *rest)
  "arg1=#{arg1}. rest=#{rest.inspect}"
end

varargs("one", "two", "three") # arg1=one. rest=["two", "three"]
```

- 개수가 정해지지 않은 가변 매개 변수를 전달하고 싶거나 하나의 매개 변수로 여러 개의 매개 변수를 모두 처리하고 싶을 때 별표(`*`)로 처리할 수 있다.
- 가변 길이 매개 변수는 매개 변수 리스트이 어디에나 올 수 있다.
  ```rb
  def split_apart(first, *splat, last)
    puts "First: #{first.inspect}, splat: #{splat.inspect}, last: #{last.inspect}"
  end

  split_apart(1, 2, 3, 4) # First: 1, splat: [2, 3], last: 4
  ```

### 메서드와 블록

```rb
class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end

  def get_tax(amount)
    "#@name on #{amount} = #{ @block.call(amount) }"
  end
end

tc = TaxCalculator.new("Sales tax") { |amt| amt * 0.075 }
tc.get_tax(100) # "Sales tax on 100 = 7.5"
tc.get_tax(250) # "Sales tax on 250 = 18.75"
```

- 마지막 매개 변수 앞에 앰퍼샌드(`&`)를 붙여주면 주어진 블록이 Proc 객체로 변한된다.
- 이 객체를 마지막 매개 변수(블록매개 변수)에 대입하면, 이를 통해 나중에 사용할 수 있다.

### 블록을 더 동적으로 사용하기

```rb
print "(t)imes o r(p)lus: "
operator = gets
print "number: "
number = Integer(gets)
if operator =~ /^t/
  calc = lambda { |n| n * number }
else
  calc = lambda { |n| n + number }
end
puts (1..10).collect(&calc).join(", ")

# (t)imes or (p)lus: t
# number: 2
# 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
```

- 메서드의 마지막 매개 변수 앞에애퍼샌드(`&`)를 붙이면, 루비는 이 매개 변수를 Proc 객체로 간주한다.
- Proc 객체를 매개 변수 리스트에서 뺴내서이를 블록으로 변환한 다음 메서드에 결합하는 식으로 처리한다.

## 연산자

### 연산자 표현식

```rb
a = [1, 2, 3]
p a << 4 # [1, 2, 3, 4]

class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end

  def average
    fail "No scores" if @count.zero?
    Float(@total_score) / @count
  end
end

score = ScoreKeeper.new
score << 10 << 20 << 40
puts "Average = #{score.average}" # Average = 23.0
```

- 우리가 작성한 클래스를 마치 내장 객체인 것처럼 연산자 표현식의 일부로 쓸 수 있다.
- `<<` 메서드가 명시적으로 `self`를 반환한다.
  - 이렇게 한 이유는 `score << 10 << 20 << 40` 같이 연쇄적으로 메서드를 사용할 수 있도록 함이다.

### 병렬 대입

```rb
int a = 1
int b = 2
c, d = 1, 2 # c=1, d=2
d, c = c, d # d=1, c=2
```

- 루비에서는 우변값(대입의 오른쪽에 오는 값)에 쉼표로 구분되는 목록을 지정할 수 있다.

### 중첩 대입

```rb
a, (b, c), d = 1, 2, 3, 4 # a=1 , b=2 , c=nil , d=3
a, (b, c), d = [1, 2, 3, 4] # a=1 , b=2 , c=nil , d=3
a, (b, c), d = 1, [2, 3], 4 # a=1 , b=2 , c=3 , d=4
a, (b, c), d = 1, [2, 3, 4], 5 # a=1 , b=2 , c=3 , d=5
a, (b, *c), d = 1, [2, 3, 4], 5 # a=1 , b=2 , c=[3, 4] , d=5
```

- 대입문의 좌변에 괄호로 둘러싸인 목록을 둘 수 있다.
- 루비는 이 목록을 중첩 대입문으로 인식하여 대응되는 우변값을 추출해서 괄호로 둘러싸인 부분에 대입한다.

### 조건적 실행

#### and, or, not

```rb
nil && 99 # nil
false && 99 # false
"cat" && 99 # 99
```

- 루비는 모든 표준 논리 연산자를 지원한다.
- and와 &&는 첫 번째 피연산자가 false이면 첫 번째 피연산자를 그대로 반환한다.
  - 그 이외에는 두 번쨰 피연산자를 평가하고 그 값을 반환한다.
- or과 ||는 모두 피연산자들이 모두 참일 때마 참을 반환한다.
  - 첫 번쨰 피연산자가 거짓이면 두 번쨰 피연산자를 평가하고 그 결과를 반환한다.

## 예외 처리

### Exception 클래스

예외에 대한 정보를 가진 것은 `Exception` 클래스 또는 그 자식 클래스의 객체다. 다음은 예외 처리에 대한 계보다.

```
Exception
  NoMemoryError
  ScriptError
    LoadError 
      Gem::LoadError
    NotImplementedError
    SyntaxError
  SecurityError
  SignalException
    Interrupt
  StandardError
    ArgumentError
      Gem::Requirement::BadRequirementError
    EncodingError
      Encoding::CompatibilityError
      Encoding::ConverterNotFoundError
      Encoding::InvalidByteSequenceError
      Encoding::UndefinedConversionError
    FiberError
    IndexError
      KeyError
      StopInteration
    IOError
      EOFError
    LocalJumpError
    Math::DomainError
    NameError
      NotMethodError
    RangeError
      FloatDomainError
    RegexpError
      Gem::Exception
    RuntimeError
      Gem::Exception
    SystemCallError
    ThreadError
    TypeError
    ZeroDivisionError
  SystemExit
    Gem::SystemExitException
  SystemStackError
```

### 예외 처리하기

```rb
begin
  eval string
rescue SyntaxError, NameError => boom
  print "String doesn't compile: #{boom}" # boom.class <= NameError
rescue StandardError => bang
  print "Error running script: #{bang}"
end

# String doesn't compile: undefined local variable or method `string' for main:Object
# Did you mean?  String
```

- case 구문이 동작하는 방식과 비슷하다.
  - begin 블록의 rescue 절에 대해 하나씩 차례로 발생된 예외와 rescue의 매개 변수를 비교한다.
  - 그 매개 변수에 해당한다면 그 부분을 실행하고 탐색을 멈춘다.
- 대부분의 예외에서는 rescue 절에 지정한 예외가 발생한 예외와 같거나 그 상위 클래스일 경우에 참을 반환한다.
  - `rescue` 절에 아무런 매개변수 없이 쓴다면, 매개 변수의 기본값은 `StandardError`가 된다.
- 적절한 `rescue` 구문을 찾을 수 없거나, 예외가 `begin/end` 블록 바깥에서 발생한 경우에는 스택을 거슬러 올라가서 호출자에서 예외 처리 구문을 찾는다.

### 말끔히 치우기

```rb
f = File.open("testfile")
begin
  # .. 프로세스
rescue
  # .. 에러 처리
ensure
  f.close
end
```

- 예외가 발생했건 하지 않았건 코드 블록의 끝부분에 특정 작업을 반드시 실행해야 하는 경우가 있다.
  - ex) 블록을 시작할 때 파일을 열었다면 블록이 끝나면 파일이 닫힌다는 사실을 보장해야 한다.
- `rescue` 절 뒤에 `ensure` 절을 사용하면 블록이 끝날 때 반드시 실행되어야 하는 코드를 작성할 수 있다.
  - 블록이 정상적으로 종료되건, 예외가 발생하고 rescue되건, 처리되지 않은 예외에 의해 종료되건 간에 상관없이 `ensure` 블록을 실행된다.

















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
