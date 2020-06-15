# Dart 기초문법 - Making Class - Part.2 

<!-- wp:paragraph -->
<p>앞서의 글을 통해서 기본적인 클래스의 개발과 subclass 개발을 학습하였습니다. 이 글은 후반부에 해당하는 글로써, 앞서 개발한 Point와 ColorPoint 클래스를 그대로 사용할 예정입니다. 이런 개념을 재사용(reuse)이라고 합니다. 하나의 프로그램이 계속 길어지는 것을 방지하기 위하여, 만들어 놓은 그대로 사용할 Point와 ColorPoint의 소스 코드만 아래의 darttutorial-21-00.dart 처럼 분리하겠습니다. main()이 없기에 자체적으로 실행은 불가하며, 이후 darttutorial-21-01.dart에서 재활용할 계획입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-00.dart 

// Library for sqrt function inclusion
import 'dart:math';

class Point {
  // Instance Variables
  var x;
  var y;

  // Constructor with optional and default parameters
  Point([var numX = 0, var numY = 0]) {
    this.x = numX;
    this.y = numY;
  }

  // COnstructor with Class-Name.Identifier-Name
  Point.fromPoint(Point origin) {
    this.x = origin.x;
    this.y = origin.y;
  }

  // Instance method to calculate distance
  num distanceTo(Point other) {
    var dx = this.x - other.y;
    var dy = this.y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  // Getter
  String get stringify =&gt; "(${this.x},${this.y})";

  // Setter
  set increaseX(num value) =&gt; this.x += value;
  set increaseY(num value) =&gt; this.y += value; 
}

class ColorPoint extends Point {
  // Instance Variables
  int red;
  int green;
  int blue;

  // Constructor with optional and default parameters
  ColorPoint([int r = 0, int g = 0, int b = 0, int x = 0, int y = 0]) : super(x, y) {
    this.red = r;
    this.green = g;
    this.blue = b;
  }

  // Getter
  @override
  String get stringify =&gt; "${super.stringify} with (${this.red},${this.green},${this.red})";

  // Overriding generic operators
  ColorPoint operator +(ColorPoint p) =&gt; ColorPoint(255, 255, 255, this.x + p.x, this.y + p.y);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>원래 이런 화일의 이름은 Point.dart 혹은 ColorPoint.dart 등으로, 유의미한 이름을 써야 겠지만, 일단은 문법을 공부하는 입장에서 순차적인 의미의 화일 이름을 유지하도록 하겠습니다. 그렇다면, 재활용한다는 의미는 무엇인지 살펴보면 다음과 같습니다. 아래의 darttutorial-21-01.dart 프로그램은 앞서의 darttutorial-21-00.dart 프로그램을 재활용하는데, 이에 해당하는 구문이 import 'darttutorial-21-00.dart'; 입니다. import 명령은 향후 Library에서 학습할 내용으로서, 이미 만들어진 프로그램을 별도의 개발없이 재사용하는 것을 의미합니다. 이후에 Point/ColorPoint 클래스 소스 프로그램이 저장된 화일 이름이 쓰여져 있기에, 의미적으로 darttutorial-21-00.dart을 읽어 실행 가능하도록 준비하는 것을 의미합니다. 결론적으로 Point/ColorPoint는 수정 없이 재활용할 것이기에, 새롭게 작성할 부분에 좀 더 집중을 할 수 있다는 것을 느낄수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-01.dart 

// Library for Point and ColorPoint classes
import 'darttutorial-21-00.dart';

void main() {
  var pPoint1 = Point();
  var cPoint1 = ColorPoint();
  // output: [01]$ pPoint1:(0,0), cPoint1:(0,0) with (0,0,0)
  print("[01]\$ pPoint1:${pPoint1.stringify}, cPoint1:${cPoint1.stringify}");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 darttutorial-21-01.dart 프로그램에 아래의 새롭게 배울 문법들을 적용해 보면서, 새로운 문법에 집중하여 프로그램을 확장해 보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>Mixins for Multiple Inheritance (<em>with</em> Syntax)</li><li>Implicit Interfaces (<em>implements</em> Syntax)</li><li>Abstract Methods and Classes</li><li>Extension Methods</li><li>Class Variables and Methods (<em>Static</em> Syntax)</li></ul>
<!-- /wp:list -->

<!-- wp:heading {"level":4} -->
<h4>Mixins for Multiple Inheritance (<em>with</em> Syntax)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어는 subclass의 super class를 하나로 제한합니다. 하지만 프로그래밍을 하다보면, 복수의 Class의 기능을 모아서 subclass에 넣으면 좋을때가 나옵니다. 이를 위한 문법이 mixins 기능으로 문법은 <em>with</em> 입니다. 예를 들면, 앞서에서 만든 ColorPoint에 추가적으로 화면에 출력을 할지 말지를 flag를 두어서 관리하고 싶을때, 이미 이런 기능을 가진 ActivatationFlag라는 일종의 Class가 있다고 합시다. 그러면, 화면에 출력을 할 정보를 관리하는 ColorPoint 클래스를 super class로 해서 실제 화면에 좌표를 그려주는 기능까지 함께 가지고 있는 ColorPointDrawer 클래스를 subclass로 만들어 봅니다. 여기세 화면에 그릴지 말지를 플래그 값으로 관리하는 ActivationFlag를 <em>with</em> 문법으로 mixin 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class ColorPointDrawer extends ColorPoint with ActivationFlag {
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>그러면 ActivationFlag에 대해서 좀 더 자세하게 알아봅니다. Dart 언어는 버전 2.1부터 with 문법으로 사용할 일종의 mixins 전용 객체 들을 위하여 <em>mixin</em> 문법을 제공하고 있습니다. 일반적인 class를 통한 클래스와 유사하지만, constructor가 없는 것으로 제한하고 있습니다. 이를 통해서 만든 ActivationFlag의 소스 코드가 다음과 같습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>mixin ActivationFlag {
  // Instance variable
  bool flag = true;

  // Getter and Setter for instant variable
  bool get flagActivated =&gt; this.flag;
  set flagActivated(bool givenFlag) =&gt; (this.flag = givenFlag);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>class 문법이 있어야 할 곳에 mixin이라고 써있을 뿐, 보기에는 class를 만드는 것과 다르지 않습니다. 실제로 class로 선언을 해도 동작 하며, 2.0 이전에는 class 문법으로 만든 mixins 들을 <em>with</em> 문법으로 사용했습니다. ActivationFlag mixin안에는 instance variable로 bool 값의 flag가 있으며, default로 true 값을 갖도록 합니다. 그리고 이 값을 변경하거나 혹은 읽어내는 Getter와 Setter가 포함되어 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>만약 (이제 설명할) ActivationFlag이 ColorPointDrawer에만 독점적으로 사용된다면, 앞서의 class ColorPointDrawer extends ColorPoint with ActivationFlag { } 구문 대신 ActivationFlag의 정의 부분에 on 명령을 사용해서 다음과 같이 할수도 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>mixin ActivationFlag on ColorPointDrawer {
  // Instance variable
  bool flag = true;

  // Getter and Setter for instant variable
  bool get flagActivated =&gt; this.flag;
  set flagActivated(bool givenFlag) =&gt; (this.flag = givenFlag);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 ColorPoint 클래스의 기능과 ActivationFlag 믹스인을 포함하는 ColorPointDrawer 클래스 내용을 채워 보도록 합니다. 다음과 같이 간단한 형태로 시작해 봅니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class ColorPointDrawer extends ColorPoint with ActivationFlag {
  // Constructore with super() invokation
  ColorPointDrawer(var r, var g, var b, var x, var y) : super(r,g,b,x,y) { }

  // Overriding super class stringfy property
  @override
  String get stringify =&gt; (this.flagActivated == true) ? "${super.stringify} is activated" : "null";
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Constructor는 ColorPoint 클래스의 constructor를 super()로 호출하여, 그대로 재사용 하는 것을 볼 수 있습니다. 그리고 Point 클래스에서 처음 만들어 져서 ColorPoint에서 override한 stringify Getter를 다시 한번 override하고 있습니다. 그런데 anonymous function 안을 보면, 우리가 mixin한 ActivationFlag의 flag 값이 true이면 ColorPoint의 stringify 정보에 flag 정보를 추가하여 출력을 합니다. 하지만 flase이면 null 값을 리턴 함으로 화면에 출력을 하지 않도록 유도하게 됩니다. 따라서, super class인 ColorPoint의 내용과 mixin된 ActivationFlag를 합쳐서, stringify를 override한 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>지금까지의 내용을 모두 모아서 darttutorial-21-01.dart로 포함하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-01.dart 

// Library for Point and ColorPoint classes
import 'darttutorial-21-00.dart';

mixin ActivationFlag {
  // Instance variable
  bool flag = true;

  // Getter and Setter for instant variable
  bool get flagActivated =&gt; this.flag;
  set flagActivated(bool givenFlag) =&gt; (this.flag = givenFlag);
}

class ColorPointDrawer extends ColorPoint with ActivationFlag {
  // Constructore with super() invokation
  ColorPointDrawer(var r, var g, var b, var x, var y) : super(r,g,b,x,y) { }

  // Overriding super class stringfy property
  @override
  String get stringify =&gt; (this.flagActivated == true) ? "${super.stringify} is activated" : "null";
}

void main() {
  var pPoint1 = Point();
  var cPoint1 = ColorPoint();
  // output: [01]$ pPoint1:(0,0), cPoint1:(0,0) with (0,0,0)
  print("[01]\$ pPoint1:${pPoint1.stringify}, cPoint1:${cPoint1.stringify}");

  var dPoint1 = ColorPointDrawer(100, 100, 100, 7, 7);
  // output: [02]$ dPoint1:(7,7) with (100,100,100) is activated
  print("[02]\$ dPoint1:${dPoint1.stringify}");
  
  dPoint1.flagActivated = false;
  // output: [03]$ dPoint1:null
  print("[03]\$ dPoint1:${dPoint1.stringify}");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>그리고 darttutorial-21-01.dart 프로그램의 수행 결과를 다음과 같이 포함하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ pPoint1:(0,0), cPoint1:(0,0) with (0,0,0)
[02]$ dPoint1:(7,7) with (100,100,100) is activated
[03]$ dPoint1:null
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Implicit Interfaces (<em>implements</em> Syntax)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Interfaces는 클래스의 멤버 변수와 메소드의 이름과 입출력 파라메타의 정의를 의미한다고 보면 됩니다. Implicit 하다는 의미는, Dart 언어에서 클래스가 만들어지면, 이들을 내부적으로 관리한다는 의미입니다. 따라서 내부적으로 어떤 값이나 기능을 하는지와는 상관없이 변수와 함수의 이름과 입출력 파라메타의 이름/타입이 중요한 정보입니다. <em>implements</em> 문법은 class Student implements Person { ... } 처럼 사용하는데, Person이 가지고 있는 interfaces 들을 Student도 그래도 구현해야 한다는 의미입니다. 하지만, 해당 변수들과 함수의 내용들이 전달되지는 않으며, Person에서 정의한 변수와 메소드가 Student에서도 구현이 되어야 한다고 규정하는 의미입니다. 따라서 개발자는 Studnet 클래스를 만드는 경우, Person에서 정의한 멤버 변수와 메소드들의 이름과 타입을 유지하면서 (내용은 다르더라도) 구현을 해줘야 합니다. 아래의 darttutorial-21-02.dart 프로그램은 Person에서 가지고 있는 _name 변수와 id 메소드를, Student와 Professor 클래스에서도 구현해 줘야 하는 것을 볼수 있습니다. 따라서 getID와 같은 하나의 함수를 통해서 서로 다른 클래스의 메소드에 접근하는 것이 가능하기에, 다양한 클래스 객체들이 더 만들어 지더라도 이를 사용하는 쪽의 코드는 바뀌지 않아도 되는 것을 알수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-02.dart 

// A person. The implicit interface contains id().
class Person {
  // In the interface.
  var _name;
  String id() =&gt; '${_name}';

  // Not in the interface, since this is a constructor.
  Person(this._name);
}

// An Student implementation of the Person interface.
class Student implements Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_studentNumber}';

  // Not in the interface.
  var _studentNumber;
  Student(this._name, this._studentNumber);
}

// An Professor implementation of the Person interface.
class Professor implements Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_professorNumber}';

  // Not in the interface.
  var _professorNumber;
  Professor(this._name, this._professorNumber);
}

// Seamless interface for Person, Student and Professor.
String getID(Person person) =&gt; person.id();

void main() {
  // Seamless access to Person, Student and Professor.
  print(getID(Person("Person")));
  print(getID(Student("Student", "#01")));
  print(getID(Professor("Professor", "#0A")));
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이 프로그램의 출력 결과는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Person
Student:#01
Professor:#0A
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>참고로  <em>implements</em> 문법의 경우는 제대로 정해진 interfaces를 구현하지 않을 경우, 프로그램의 에러가 발생하여 동작이 되지 않습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Abstract Methods and Classes</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>darttutorial-21-02.dart 프로그램을 자세히 보고 있으면, 실제 프로그램이 수행되는 환경에서 Student와 Professor 클래스는 객체를 만들어서 사용하는 것이 맞지만, Person이라는 클래스는 객체를 만들일이 있을까 의아해 질 수 있습니다. 즉, 학교에는 학생과 교수가 필요하지만, '사람'이라는 일반적인 객체는 구체성이 떨어지기 때문에, 객체를 만들 확률이 낮아집니다. 다만, Person이라는 객체가 제공했던 String id() 함수는, 같은 이름의 함수가 Student와 Professor에도 일관되게 제공되어 사용성 면에서 수월성이 증가하므로, 존재할 필요가 있습니다. 따라서, Person 클래스의 존재이유는 String id() 함수라는 인터페이스는 의미가 있지만, 실체 객체가 만들어지지 않는다면, 멤버 변수인 var _name도 의미가 없으며, 이 변수가 없으니 String id() 함수의 구체적인 기능이 정해질 필요도 없습니다. 이렇게 인터페이스만 존재하여 실제 데이타와 기능은 없기에 객체로 만들수 없는 클래스, 그렇지만 이를 통해서 implements를 통한 관련 클래스 객체의 생성이나 subclass의 구현에는 유용한 클래스는 abstract 클래스 라고 합니다. darttutorial-21-02.dart 프로그램의 Person 클래스를 abstract로 변경한 darttutorial-21-03.dart 프로그램을 아래에서 확인 바랍니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-03.dart 

// A person. The implicit interface contains id().
abstract class Person {
  // In the interface.
  String id();
}

// An Student implementation of the Person interface.
class Student implements Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_studentNumber}';

  // Not in the interface.
  var _studentNumber;
  Student(this._name, this._studentNumber);
}

// An Professor implementation of the Person interface.
class Professor implements Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_professorNumber}';

  // Not in the interface.
  var _professorNumber;
  Professor(this._name, this._professorNumber);
}

// Seamless interface for Person, Student and Professor.
String getID(Person person) =&gt; person.id();

void main() {
  // Seamless access to Person, Student and Professor.
  // print Student:#01
  print(getID(Student("Student", "#01")));
  // print Professor:#0A
  print(getID(Professor("Professor", "#0A")));
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Person 클래스를 보면, 사실상 String id()인 인터페이스만 있으며, 멤버 변수도 지웠고, String id() 함수의 구체적인 동작도 기술하지 않았습니다. 이렇게 함수의 이름과 입출력 파라메타만 정의한 함수는 abstract 함수/메소드라고 합니다. 따라서 Person은 별도의 객체를 만들수 없기에, main()에서 Person 객체를 만들던 코드는 지웠습니다. 하지만, Person을 implement한 Student와 Professor는 정상적으로 동작하고 있으며, getID()를 통해서 Person을 implement한 객체들에 일관된 방법으로 접근이 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Abstract 클래스를 꼭 implement 하는 방식으로 사용하는 것은 아닙니다. darttutorial-21-04.dart 프로그램을 보면, abstract 클래스를 extends 하는 방식으로도 사용 가능합니다. 이렇게 하면, 우리가 만든 Point 클래스가 abstract 클래스로 되고, 이로부터 ColorPoint과 BlackWhitePoint를 Point 클래스의 subclass로 만드는 것도 가능합니다. 실제 프로그램에서는 Point 클래스는 의미가 없으므로 객체를 만들지 않고, 필요시 컬러의 점 혹은 흑백의 점을 만드는 방식으로 보면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-04.dart 

// A person. The implicit interface contains id().
abstract class Person {
  // In the interface.
  String id();
}

// An Student implementation of the Person interface.
class Student extends Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_studentNumber}';

  // Not in the interface.
  var _studentNumber;
  Student(this._name, this._studentNumber);
}

// An Professor implementation of the Person interface.
class Professor extends Person {
  // Implementation of interface.
  var _name;
  String id() =&gt; '${_name}:${_professorNumber}';

  // Not in the interface.
  var _professorNumber;
  Professor(this._name, this._professorNumber);
}

// Seamless interface for Person, Student and Professor.
String getID(Person person) =&gt; person.id();

void main() {
  // Seamless access to Person, Student and Professor.
  print(getID(Student("Student", "#01")));
  print(getID(Professor("Professor", "#0A")));
}
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Extension Methods</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Extension methods는 Dart 2.7에서 제공하는 기능으로 최신 기법 중의 하나로 볼 수 있습니다. 우리가 클래스를 사용하는 이유를 재사용/재활용이라고 하였는데, 이미 만들어져서 잘 쓰고 있는 Dart 언어 자체의 혹은 기 개발한 클래스(혹은 이후 설명할 라이브러리)를 수정하지 않고, 새로운 기능을 추가하는 것이 가능합니다. 예를 들어, 몇번 등장했던 다음의 코드를 살펴봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>print(int.parse('42')); // Built-in Dart function
print(double.parse('42.0')); // Built-in Dart function
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>예제 프로그램으로 몇번 등장했던 코드로써, int.parse('42')는 문자열 '42'를 정수 42로 바꿔주는 기능을 하는 int 클래스의 멤버 메소드 입니다. 마찬가지로 double.parse('42.0')은 '42.0' 문자열을 42.0의 실수로 바꿔주는 double 클래스의 멤버 메소드 입니다. 그렇다면 문자열 클래스인 String에서도 유사한 기능을 하고 싶다면 어떻게 해야할까요? String 클래스에는 아쉽게도 이런 기능이 없습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Extension Methods는 말 그대로 기존의 클래스에 Method를 Extension 해주는 기능입니다. 우리의 목표를 기존의 String 클래스가 직접 스스로의 저장한 문자열을 정수/실수로 바꿔주는 Method를 Extension 한다고 합시다. 그리고 이 규칙의 이름을 NumberParsing_v1 이라고 부르겠습니다. 아래는 이 기능을 수행하는 int parseInt()와 double parseDouble() 까지 모두 구현한 완전체 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>extension NumberParsing_v1 on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>String 클래스에 대해서(on) NumberParsing_v1라는 규칙명으로 int parseInt()과 double parseDouble() 메소드를 extension 한다는 의미입니다. parseInt()를 보면, 입력 파라메타는 없으나 내부를 보면 this를 통해서 자체적으로 가진 문자열을 int.parse()에 넣어서 정수로 취하는 것을 볼 수 있습니다. 그리고 이렇게 바뀐 정수 값을 return 합니다. parseDouble()도 유사하게 this에 저장한 문자열을 double 값으로 return 하는 것을 볼 수 있습니다. 이렇게 extension한 method를 실행하는 방법은 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>print('42'.parseInt()); // Use an extension method. 
print('42.0'.parseDouble()); // Use an extension method.
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>실행하는 부분을 보면, 문자열 '42'에 "." 연산자를 사용하므로, 마치 String의 멤버 메소드를 호출하는 것처럼 하고 있습니다. 따라서 우리가 만든 Methods 들이 실제 String 클래스를 Extension 한 것으로 파악 할 수 있습니다. 따라서 this를 통해서 '42'를 취한후, int.parse로 정수 변환한 값을 리턴하게 됩니다. parseDouble()도 마찬가지로 동작합니다. 지금까지 설명한 내용을 아래 darttutorial-21-05.dart 프로그램에 하나로 모아 두었습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-05.dart 

extension NumberParsing_v1 on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

void main() {
  print(int.parse('42')); // Built-in Dart function
  print(double.parse('42.0')); // Built-in Dart function

  print('42'.parseInt()); // Use an extension method. 
  print('42.0'.parseDouble()); // Use an extension method.
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이렇게 함으로써, 이미 잘 만들어진 클래스(라이브러리)를 수정하지 않아도, 쉽게 추가적인 기능을 만들어서 개량이 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Class Variables and Methods (<em>Static</em> Syntax)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Static 문법은 클래스의 멤버 변수 혹은 멤버 메소드를 만드는 맨 앞에 사용할 수 있습니다. Statics으로 정의된 변수는 객체에 저장되는 것이 아니고, 클래스에 귀속 됩니다. 따라서, 클래스에서 객체를 만들지 않아도 존재합니다. Static 메소드도 클래스에 귀속된 정보들 만으로 객체들과 상관없이 동작 합니다. 반대로 객체에 귀속된 this로 접근하는 정보들은 사용할 수 없습니다. 가장 일반적인 사용 사례는 클래스로부터 만들어지는 객체의 갯수를 카운팅 하는 경우가 있습니다. 앞서에서 개발한 Point 클래스를 간단하게 줄인후 Static을 적용한 darttutorial-21-06.dart 프로그램을 살펴보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-21-06.dart 

class Point {
  // Instance Variables
  var x;
  var y;
  static int hash = 0;

  // Constructor with optional and default parameters
  Point([var numX = 0, var numY = 0]) {
    this.x = numX;
    this.y = numY;
    hash++;
  }

  // Getter
  String get stringify =&gt; "(${this.x},${this.y}) with hash:$hash";

  // Static Getter
  static String get static_stringify =&gt; "hash:$hash";
}

void main() {
  // Create 1st Point object
  var p1 = Point();
  print(p1.stringify);

  // Create 2nd Point object
  var p2 = Point();
  print(p2.stringify);

  // Create 3rd Point object
  var p3 = Point();
  print(p3.stringify);

  // Print static memebr variable only
  print(Point.static_stringify);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>먼저 클래스의 멤버 변수로 static int hash = 0;가 있습니다. 정수형의 hash라는 이름의 변수로서, static은 객체와 상관없이 클래스에 귀속된 변수로서 컨파일 시점에 0으로 초기화가 됩니다. 이 값은 constructor에서 hash++;로 객체가 만들어 질때 마다 증가합니다. 클래스에 귀속되어 있기에 this 문법은 사용하지 않습니다. 이 값을 출력하는 Getter도 static으로 정의되어 있으며, static 변수를 리턴하도록 되어 있습니다. 이 프로그램의 수행 결과가 다음처럼 표시되어 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>hash:0
(0,0) with hash:1
(0,0) with hash:2
(0,0) with hash:3
hash:3
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>main()을 보면, 객체를 만들기 전에 static_stringify Getter를 실행한 것을 볼 수 있습니다. 아직 객체가 만들어지기 전이므로, hash의 값은 0 입니다. 객체가 만들어 질때 마다 이 값을 확인하면, 1씩 증가하는 것을 볼 수 있습니다. 이렇게 static 변수롸 함수를 사용함으로써, 클래스에서 만들어지는 객체를 다루거나, 혹은 클래스의 관리하는 등의 작업을 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>클래스에 대한 두번째 글로써, 코드를 재사용하기 위한 방법과 서로 다른 클래스의 객체들을 일관된 방법으로 접근 하는 방법, 이미 완성도 있게 잘 쓰고 있는 클래스(혹은 라이브러리)를 수정하지 않고도 새로운 기능을 추가하는 방법 등에 대해서 배웠습니다. 클래스에 대한 부분은 내용이 다소 넓은 편이기에, 다름 글에서 남은 Class 이슈들을 마지막으로 다루도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":132,"height":47} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="132" height="47"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
