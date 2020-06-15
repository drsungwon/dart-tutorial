# Dart 기초문법 - Making Class - Part.1

<!-- wp:paragraph -->
<p>이전의 글인 <em>Using Class</em>를 통해서, 클래스가 무엇이며, Dart 언어가 제공하는 클래스들을 어떻게 사용하는지 이해 하였습니다. 이 글에서는 개발자가 직접 클래스를 만드는 방법에 대해서 설명하면서, 클래스의 보다 깊은 내용에 대해서 알아가겠습니다. 다른 글 들과 비교하여 내용이 다소 방대할 수 있기에, 미리 다루고자 하는 내용을 다음과 같이 나타냈습니다. 참고로 이번글에서는 Dart 언어 공식 홈페이지의 Language Guide 부분에서, Class 부분의 예제 프로그램을 일부 변형하여 설명 하겠습니다 [<a href="https://dart.dev/guides/language/language-tour#classes">참조</a>]. 다룰 내용이 많은 관계로 이 글에서는 아래의 사항에 대해서 설명합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li><em>Class</em> Syntax</li><li>Constructor</li><li><em>runtimeType</em> Property</li><li>Instance Variables and Methods </li><li>Getters and Setters</li><li>Inheritance or Subclassing (<em>extends</em> Syntax)</li><li>Overriding Members</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>그리고 다음 글들에서 아래의 내용 등을 다루도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>Mixins for Multiple Inheritance (<em>with</em> Syntax)</li><li>Implicit Interfaces (<em>implements</em> Syntax)</li><li>Abstract Methods and Classes</li><li>Extension Methods</li><li>Class Variables and Methods (<em>Static</em> Syntax)</li><li>Auxiliary Useful Features</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>이 글에서는 예시로 하나의 클래스를 만들어 보겠습니다. 간단하게 2차원 평면에 좌표값인 (x, y)를 나타내는 클래스 Point 입니다. 아무런 내용이 없는 가장 단순한 형태에서 시작해서 새로운 문법을 하나씩 추가해 가는 방향으로 진화해 보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4><em>Class</em> Syntax</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>우리는 Dart에서 제공하는 다양한 클래스를 사용했습니다. int, double, String, bool, List, Map, Set 등의 클래스를 잘 사용하였는데, 이들을 이제 만들어 보도록 하겠습니다. 클래스를 만드는 문법은 <em>class</em> 입니다. 일단 내부를 채우지 않고, 가장 간단한 형태로 Point라는 이름의 클래스를 만들면 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class Point {
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>아무런 정보가 없는 클래스는 의미가 없으므로, 원래 과표가 가져야 하는 정보인 x, y 값을 갖도록 하겠습니다. 편의상 데이타 타입을 고려하지 않고 type inference를 사용하는 var 타입으로 만들겠습니다. 이렇게 클래스 안의 변수를 instance variable 혹은 member variable 이라고 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class Point {
  var x;
  var y;
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이렇게 간단한 클래스 Point 이지만, 당장 프로그램에서 활용 가능합니다. 간단하게 point1이라는 이름으로 클래스 Point의 객체를 만들고, (Using Class에서 배운 것처럼) 클래스 Point의 멤버 데이타에 값을 저장하거나 읽어오도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var point1 = Point();
  // output: [01]$ point1 is (null, null)
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>print 구문 [01] 관련, Point 클래스 이름을 쓰고 () 기호를 마치 함수 호출 하듯이 붙이는 형태로 Point 객체를 만들게 됩니다. 그리고 만들어진 객체를 point1에게 전달하였습니다. Point 객체에는 x와 y가 멤버 데이타로 있으므로, 일단 만들어진 Point 객체의 멤버 변수를 Using Class에서 배운 "." 연산자를 통해서 확인해 보면, 두 값이 모두 null로 나타나는 것을 볼 수 있습니다. 이는 Point 객체를 만들면서, x와 y 변수는 만들었지만, 초기화를 하지 않았기에, 앞서 변수 부분에서 배운 것처럼 각각 null 값을 가지는 것을 확인한 것입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>만약 var point1 = Point();가 아닌 Point point1;를 만들면 어떻게 될까요? 변수를 만들면, 초기값은 null이라고 했습니다. 따라서 후자의 문법은 point1이라는 이름으로 "앞으로" Point 클래스를 저장하고 다룰것이니, "지금은" 저장을 안하고 있는 상태라서 point1이 null 값을 갖게 됩니다. 따라서, print로 x와 y를 출력하고자 하면 에러가 발생 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  Point point1;
  // error at below, due to point1 is null
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이에 point1 객체의 멤버 변수인 x와 y를 의미 있는 값으로 저장해 보겠습니다. 방법은 Using Class에서 배운 것처럼, 객체의 "." 연산자를 활용하여 값을 저장하는 것과 동일합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var point1 = Point();
  // output: [01]$ point1 is (null, null)
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");

  point1.x = 4;
  point1.y = 4;
  // output: [02]$ point1 is (4, 4)
  print("[02]\$ point1 is (${point1.x}, ${point1.y})");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>point1 객체의 x와 y에 각각 정수 4를 저장하였습니다. 그리고 print 구문 [02] 처럼 하면, 제대로 4 값이 좌표 갑으로 업데이트 된 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Constructor</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>보다 편리하게 객체를 만드는 지점에서 멤버 변수들의 초기화를 같이하는 방법은 없을까? 이런 기능을 객체지향 프로그래밍에서는 constructor라고 합니다. 멤버 메소드로서, 객체를 만드는 시점에서 멤버 데이타를 초기화 하는 작업을 합니다.  가장 기본적인 constructor는 클래스의 이름과 같은 이름의 메소드 입니다. Point 클래스에 constructor를 추가하고, 해당 constructor가 x, y의 값을 입력 파라메타로 받도록 하고, main()에서 constructor를 통해서 초기화까지 수행하는 코드는 다음과 같습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class Point {
  var x;
  var y;

  Point(var numX, var numY) {
    this.x = numX;
    this.y = numY;
  }
}

void main() {
  var point2 = Point(5, 5);
  // output: [03]$ point1 is (5, 5)
  print("[03]\$ point2 is (${point2.x}, ${point2.y})");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>설명을 하지 않은 문법인 this가 나타났습니다. this는 클래스의 멤버 메소드에서 객체의 값에 접근하기 위하여 사용하는 문법입니다. 즉, 설계도인 클래스에서 제품인 객체들이 대량으로 만들어 집니다. 따라서 Dart 언어는 Point 클래스에서 point2 객체가 만들어 졌을때, 설계도가 아닌 제품인 point2의 데이타인 (5,5)에 접근해야 합니다. 따라서, this는 var point2 = Point(5, 5);가 수행되면, 일단 Point 객체를 만들어서 point2에 전달합니다. 그리고 나서, point2의 (x,y)를 접근해야 하므로, this는 point2를 의미합니다. this는 입력 파라메타 등으로 개발자가 관리할 필요는 없으며, Dart 언어가 객체의 메소드가 실행될때 스스로 관리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>개발자가 직접 constructor를 만들게 되면, 한가지 제약사항이 발행합니다. 앞서처럼 입력 파라메타가 없는 constructor가 자동으로 동작하지 않는 다는 점입니다. 즉 var point1 = Point();는 사실상 입력 파라메타가 없는 contructor를 실행하는 Point() 였는데, 이 부분이 에러 없이 동작한 이유는, 개발자가 constructor를 직접 만들지 않으면, Dart 언어는 자동으로 입력 파라메타가 없는 constructor(default constructor 라고 합니다)를 만들어 주기 때문입니다. 하지만 개발자가 constructor를 스스로 만들면, Dart는 default constructor의 생성을 하지 않습니다. 따라서 입력 파라메타가 없는 default constructor를 직접 만들어 줘야 하는데, 가장 간단한 방법은 두개의 입력 파라메타를 받도록 만든 constructor의 입력 파라메타를 optional한 파라메타로 정의하고, 주어지지 않으면 default 값으로 초기화 하도록 하는 방법입니다. 이렇게 개선한 constructor는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Point([var numX = 0, var numY = 0]) {
  this.x = numX;
  this.y = numY;
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Constructor는 여러개가 존재할 수 있습니다. 하지만 클래스의 이름은 하나이니, 클래스의 이름과 동일한 constructor는 복수로 존재할 수 없습니다. 따라서, 클래스의 이름에 추가적인 식별자를 더한 형태로 복수개의 constructor를 만들수 있습니다. 다음은 "클래스이름.식별자이름"의 방법으로 이름이 Point.fromPoint 이며, 입력 파라메타로 Point 객체를 받도록 추가된 constructor 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Point.fromPoint(Point origin) {
  this.x = origin.x;
  this.y = origin.y;
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>새로 만든 constroctur로 부터 point3 객체를 만들면 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>var point3 = Point.fromPoint(point2);
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4><em>runtimeType</em> Property</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어는 모든 데이타 타입이 클래스의 객체들이라고 하였습니다. 하지만, type inference 기능으로 인해서, 편리하게 var 혹은 dynamic 타입으로 사용함으로써, 개발자가 일일이 다루고자 하는 타입에 맞춰서 프로그래밍을 하는 (일부) 번거러움을 편하게 바뀌어 줍니다. 하지만, 프로그램의 실행중에 객체의 타입을 확인해야 하는 경우가 종종 있습니다. 이런 경우에 유용한 문법이 <em>runtimeType</em> property 입니다. 예를 들어, 지금까지 언급된 point3의 클래스 타입을 알고 싶다면, 다음과 같이 하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>print("[05]\$ {$point3.runtimeType}");
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이에 대한 출력은 "{Instance of 'Point'.runtimeType}"으로 되어, 클래스 Point로 부터 만들어진 객체(object 혹은 instance)임을 알 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Instance Variables and Methods&nbsp;</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Instance Variable은 Member Variable 이라고 부를 수 있습니다, 객체가 만들어 지고, 해당 객체가 관리하는 변수를 의미합니다. 이미 우리는 Point 클래스에서 만든 point1, point2, point3 객체 각각에 저장된 (x,y) 변수들 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Instance Method는 Member Method 이라고 부를 수 있습니다. 클래스에서 만들어진 객체가 가지고 있는 함수들 입니다. Constructor 들도 여기에 속하는 함수들 입니다. 그러면 이번에는 Point 클래스에 메소드를 추가해 보도록 하겠습니다. 이번에 추가하는 메소드는 두개의 좌표 사이의 거리를 구하는 기능입니다. 이름은 distanceTo 이며, 입력 파라메타로 좌표가 주어지면, 본인의 좌표와 입력 파라메타로 주어지는 좌표사이의 거리를 구합니다. 좌표 사이의 거리를 구하는 공식은 [<a href="https://ko.wikipedia.org/wiki/%EB%91%90_%EC%A0%90_%EC%82%AC%EC%9D%B4%EC%9D%98_%EA%B1%B0%EB%A6%AC">여기</a>]에서 확인 가능합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>num distanceTo(Point other) {
  var dx = this.x - other.y;
  var dy = this.y - other.y;
  return sqrt(dx * dx + dy * dy);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>못보던 데이타 타입인 num과 함수인 sqrt가 있는데, 이는 이후 Library에서 설명하겠지만, 숫자를 다루는 num 클래스 타입과 수학에서 제곱근을 계산하는 기능의 함수로, Dart 언어가 내장해서 제공하는 것입니다. 이를 사용하기 위해서, 프로그램의 맨 위에 import 'dart:math'; 구문도 추가해 하며, 이들은 Library 에서 설명 하겠습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Getters and Setters</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Getter와 Setter는 메소드의 일종으로서, 객체의 Property를 읽거나 쓰기 위해서 사용합니다. 객체의 멤버 데이타를 직접 읽고 쓰기 보다는 간접적으로 Getter와 Setter를 통해서 접근하는 것이 일반적인 객체 지향 프로그래밍 방법이라고 보면 되겠습니다. Getter로써, 객체의 좌표를 읽어 오는 간단한 메소드를 만들어 보겠습니다. 이 Getter는 결과적으로 객체의 x, y 좌표를 "(x,y)" 문자열의 형태로 return 하도록 만들어 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>String get stringify =&gt; "(${this.x},${this.y})";
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Anonymous function과 유사하지만, 입력 파라메타 부분을 괄호 ( ... )로 묶어 주지 않는 것이 약간 다르다는 것을 볼 수 있습니다. 왜 이렇게 표현이 되는 것인지는 아래의 실행 구문을 보면 이해가 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>print("[07]\$ Position of point3 : " + point3.stringify);
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>호출하는 모양이 객체의 property를 접근하는 것처럼 되어 있고, 별도의 입력 파라메타를 받지 않습니다. 따라서 클래스 객체의 stringfy property가 호출되면, anonymous function 처럼, 오른쪽의 형태의 문자열(String) 타입으로 만들어서 return 하게 됩니다. Setter를 만든 구문을 먼저 확인 하면 다음과 같습니다. set 구문이 맨 앞에 나타나 잇고, 마치 함수 이름과 입력 파라메타를 정의하는 것처럼 되어 있으며, 입력 파라메타 위치에 있는 value를 가지고 객체 내부의 x 값과 y 값을 업데이트 하는 것을 볼 수 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>set increaseX(num value) =&gt; this.x += value;
set increaseY(num value) =&gt; this.y += value; 
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Anonymous function 같기도 하면서 다른 이 형태는 다음과 같이 실행을 합니다. 마치 객체의 멤버 변수에 값을 저장하는 것처럼 보이지만, 실제로는 멤버 변수를 업데이트 하는 메소드를 호출한 셈입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>point3.increaseX = 3;
point3.increaseY = 3;
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>지금까지 만들었던 모든 내용을 하나의 프로그램에 모아서 아래의 darttutorial-20-01.dart에 포함 하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-20-01.dart 

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

void main() {
  var point1 = Point();
  // output: [01]$ point1 is (null, null)
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");

  point1.x = 4;
  point1.y = 4;
  // output: [02]$ point1 is (4, 4)
  print("[02]\$ point1 is (${point1.x}, ${point1.y})");

  var point2 = Point(5, 5);
  // output: [03]$ point2 is (5, 5)
  print("[03]\$ point2 is (${point2.x}, ${point2.y})");

  var point3 = Point.fromPoint(point2);
  // output: [04]$ point3 is (5, 5)
  print("[04]\$ point3 is (${point3.x}, ${point3.y})");

  // output: [05]$ {Instance of 'Point'.runtimeType}
  print("[05]\$ {$point3.runtimeType}");

  // output: [06]$ Distance is 1.4142135623730951
  print("[06]\$ Distance is ${point1.distanceTo(point3)}");

  // output: [07]$ Position of point3 : (5,5)
  print("[07]\$ Position of point3 : " + point3.stringify);

  point3.increaseX = 3;
  point3.increaseY = 3;
  // output: [08]$ Position of point3 : (8,8)
  print("[08]\$ Position of point3 : " + point3.stringify);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>소스 코드내의 print 구문 위에 실행 결과를 포함하였지만, 출력 결과를 하나로 모아서 다음과 같이 나열 하였으니, 참조하기 바랍니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ point1 is (0, 0)
[02]$ point1 is (4, 4)
[03]$ point2 is (5, 5)
[04]$ point3 is (5, 5)
[05]$ {Instance of 'Point'.runtimeType}
[06]$ Distance is 1.4142135623730951
[07]$ Position of point3 : (5,5)
[08]$ Position of point3 : (8,8)
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>지금까지 클래스를 만드는 법에 대해서 알아 보았습니다. 클래스를 만들어서 멤버 데이타와 멤버 메소드를 포함하였습니다. 이렇게 단순한 형태로 클래스를 만들어서 사용하는 경우도 자주 있는 사용법 입니다. 하지만, 클래스를 사용하는 경우는 대부분 'Subclassing' 혹은 '유전의 법칙(inheritance)'를 통해서 재사용이라는 개념을 실천하는 경우가 일반적입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Subclassing (<em>extends</em> syntax &amp; <em>Object</em> Class)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Subclassing은 특정 Class에 추가로 데이타와 기능을 넣어서 확장하는 개념입니다. 확장이라는 단어를 활용해서 문법이름이 <em>extends</em> 입니다. 정리해서 이야기하면, 기반이 되는 Base Class에 추가적인 기능을 넣어서 확장(extends)하면, 새로운 클래스인 Subclass를 만들게 되는 겁니다. 이때 확장되서 만들어진 Subclass는 기반이 되었던 Base Class를 Super Class 라고도 부릅니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>전통적으로 다른 언어들은 Inheritance 라는 단어를 더 많이 쓰기는 합니다. 이유는 부모 클래스(parent class)에서 자식 클래스(child class)를 만든다는 개념인데, 자식이 부모의 DNA를 물려 받는 다는 개념에서, 부모의 모든 데이타와 기능이 자식에게 유전이 되고, 자식 스스로의 데이타와 기능이 추가된다는 의미입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이 글에서는 Dart 언어에서 주로 사용하는 superclass, subclass, extends의 단어를 사용하여 설명을 해 나가도록 하겠습니다. 그리고 참고로 Dart 언어의 모든 클래스들은 <em>Object</em> 라는 클래스에서 extends 되어 만들어진 클래스들입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이 글에서는 subclassing을 설명하기 위한 목적으로, 앞서의 Point 클래스를 extends해서 ColorPoint 클래스를 만들고자 합니다. 이는 Point 클래스의 경우는 단순히 좌표값만 가지고 있지만, ColorPoint는 점에 색깔을 입히려는 목적으로 Point 클래스를 extends 하고자 합니다. Point에서 extends한 ColorPoint를 다음과 같이 만들 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class ColorPoint extends Point {
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이렇게 하는 것 만으로, Point 클래스의 모든 데이타와 메소드는 모두 ColorPoint에 포함됩니다. { ... } 안에 아무것도 적지 않은 상태에서, main()에서 다음과 같이 실행하면, 앞서 Point 클래스에서 정의한 기능들이 그대로 동작합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>var cPoint1 = ColorPoint();
// output : [01]$ Position of cPoint1 : (0,0)
print("[01]\$ Position of cPoint1 : " + cPoint1.stringify);
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 ColorPoint 클래스에 Instance Variables를 추가 하겠습니다. 흑백의 경우는 흑 혹은 백의 이진 값이지미나, 컬러 값을 나타내려면 R, G와 B의 세가지 삼원색이 합쳐져야 합니다. 따라서 { red, green, blue } 세 값을 subclass인 ColorPoint에서 멤버 데이타로 갖도록 합니다. 그리고 가장 기본적으로 constructor를 만들어서, 세가지 색깔을 받도록 하고, 추가로 super class인 Point의 (x,y) 파라메타를 초기화 하는 형태로 만듭니다. Point 경우 처럼, 입력 파라메타를 주지 않으면, default로 세가지 색깔 및 좌표가 0인 것으로 초기화 하도록 하겠습니다. 이렇게 개선한 ColorPoint 클래스는 다음과 같습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>class ColorPoint extends Point {
  int red;
  int green;
  int blue;

  ColorPoint([int r = 0, int g = 0, int b = 0, int x = 0, int y = 0]) : super(x, y) {
    this.red = r;
    this.green = g;
    this.blue = b;
  }
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 ColorPoint 클래스는 Point 클래스의 좌표 값에 추가로 3가지 색깔을 멤버 데이터로 저장합니다. 그리고 contructor를 통해서, 아무런 값이 없으면 모든 값을 0으로 설정하거나, 다섯 가지의 값을 주면 subclass의 3가지 색깔을 채우고, super class의 좌표값을 채우는 작업을 합니다. 여기서 ColorPoint의 constructor를 보면, subclass의 3가지 색깔은 constructor 안에서 값을 초기화 하지만, super class의 x, y 좌료는 ": super(x, y)"로 되어 있는 것을 볼 수 있습니다. 여기서 super는 super class의 constructor를 호출한 것입니다. 따라서 Point 클래스의 Point( x, y )를 호출한다고 보면 됩니다. 이렇게 subclass에서는 필요한 경우에 강제적으로 super class의 메소드를 호출할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>var cPoint2 = ColorPoint(100, 100, 100, 3, 3);
// output : [02]$ Color of cPoint2 : 100 100 100
print("[02]\$ Color of cPoint2 : " + "${cPoint2.red} ${cPoint2.green} ${cPoint2.blue}");
// output : [03]$ Position of cPoint2 : (3,3)
print("[03]\$ Position of cPoint2 : " + cPoint2.stringify);
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>위처럼 main()에서 수행을 하면 다음과 같은 출력을 보여줍니다. Color 값이 모두 100으로 채워져 있고, 좌표 값은 (3,3)으로 만들어져 있는 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ Position of cPoint1 : (0,0)
[02]$ Color of cPoint2 : 100 100 100
[03]$ Position of cPoint2 : (3,3)
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>super 문법을 다시 한번 더 활용하기 위해서, 이번에는 subclass에서 super class의 stringfy property를 개선해 보겠습니다. Point 클래스에는 좌표값만 출력을 했지만, ColorPoint의 stringfy는 좌표에 추가적으로 색깔을 출력하게 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>String get stringify =&gt; "${super.stringify} with (${this.red},${this.green},${this.red})";
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이렇게 stringfy를 수정 한후, 다시 한번 위의 결과를 출력하면, 다음과 같이 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ Position of cPoint1 : (0,0) with (0,0,0)
[02]$ Color of cPoint2 : 100 100 100
[03]$ Position of cPoint2 : (3,3) with (100,100,100)
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Overriding Members</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Override는 subclass에서 super class의 메소드, getter, setter와 같은 이름으로 같은 타입의 함수를 만드는 것을 의미한다. 이런 경우는, 대부분 super class의 함수를 강화하거나, 혹은 super class의 작업을 완전히 새로운 작업으로 대체하는 목적으로 사용합니다. 이미 우리는 앞서의 ColorPoint를 만들때, ColorPoint의 내부에 getter를 만들었는데, super class인 Point 클래스에 이미 존재하는 "String get stringify" 형태로 만든 것을 보았습니다. 따라서, ColorPoint는 super class인 Point 클래스의 getter인 stringfy를 override 하였습니다. 따라서, 위의 ColorPoint의 stringfy 구문을 보면, 추가된 기능인 세가지 색깔을 출력하는 형태를 만든후, super class에 존재하면서 overried된 Point 클래스의 stringfy를 실행하여, 좌표를 추가로 가져오도록 하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart에서는 subclass에서 super class의 함수(메소드, getter, setter)를 override하는 것을 명확하게 드러내는 문법으로 @override이 있으며, 앞서의 ColorPoint 클래스의 stringfy에 다음과 같이 사용할 수 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>@override
String get stringify =&gt; "${super.stringify} with (${this.red},${this.green},${this.red})";
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>@override가 없더라도 override를 하는 것에는 문제가 없지만, 해당 함수가 명확하게 super class의 함수를 override하는 것으로 했으므로, 개발자가 subclass에서 작업을 할때, 반드시 super class에는 해당 함수가 있어야 합니다. 이러한 의미를 활용하여 editor 등에서 super class의 해당 함수의 이름이 바뀌거나 하는 등의 상황에서도 오류를 방지할 수 있도록 도움을 줄 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Overriding 할 수 있는 함수는 멤버 메소드, getter, setter 외에 Dart의 표준 연산자들도 있습니다. 즉, +, -, *, /, ~/, % 외에 &lt;&lt;, &gt;&gt;, == 등의 연산자 기호들도 override가 가능합니다. 이는 새롭게 만든 클래스에 대해서는 기존의 연산자가 정보가 없어서 처리를 할 수 없기 때문에, 새로운 클래스를 만든 개발자가 직접 이 연산자들이 새로운 클래스 타입을 만났을때 어떻게 동작해야 할지를 정해줘야 하기 때문입니다. 이를 예시로 보여주기 위해서, ColorPoint 객체가 + 연산자에 반응할 수 있도록, 표준 연산자인 + 연산자를 override 하도록 합니다. 이 코드가 아래에 나타나 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>ColorPoint operator +(ColorPoint p) =&gt; ColorPoint(255, 255, 255, this.x + p.x, this.y + p.y);
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>구문을 상세하게 설명하면, ColorPoint p 객체를 입력으로 받아서, ColorPoint를 결과값으로 return하는 operator + 연산자를 재정의 한다는 의미입니다. return 하는 새로운 ColorPoint 객체는 모든 색깔 값을 255로 하고, 좌표값은 두 좌표를 합한 값으로 업데이트 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>darttutorial-20-01.dart에서 만든 Point 클래스를 기반으로 해서, subclassing과 overriding을 통해 확장한 내용을 darttutorial-20-02.dart에 모아 두었습니다. 소스 프로그램을 천천히 읽으면서 이해하기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-20-02.dart 

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

void main() {
  var cPoint1 = ColorPoint();
  // output : [01]$ Position of cPoint1 : (0,0)
  print("[01]\$ Position of cPoint1 : " + cPoint1.stringify);

  var cPoint2 = ColorPoint(100, 100, 100, 3, 3);
  // output : [02]$ Color of cPoint2 : 100 100 100
  print("[02]\$ Color of cPoint2 : " + "${cPoint2.red} ${cPoint2.green} ${cPoint2.blue}");
  // output : [03]$ Position of cPoint2 : (3,3)
  print("[03]\$ Position of cPoint2 : " + cPoint2.stringify);

  var cPoint3 = ColorPoint(1, 1, 1, 5, 5);
  var cPoint4 = cPoint2 + cPoint3;
  // output : [04]$ Color of cPoint4 : 255 255 255
  print("[04]\$ Color of cPoint4 : " + "${cPoint4.red} ${cPoint4.green} ${cPoint4.blue}");
  // output : [05]$ Position of cPoint4 : (8,8) with (255,255,255)
  print("[05]\$ Position of cPoint4 : " + cPoint4.stringify);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이 프로그램의 출력은 아래와 같이 별도로 포함하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ Position of cPoint1 : (0,0) with (0,0,0)
[02]$ Color of cPoint2 : 100 100 100
[03]$ Position of cPoint2 : (3,3) with (100,100,100)
[04]$ Color of cPoint4 : 255 255 255
[05]$ Position of cPoint4 : (8,8) with (255,255,255)
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이 글에서는 Using Class에서 사용한 클래스를 직접 만들어 보는 작업을 하였습니다. 클래스를 하나 만들어 본 후, 이를 super class로 하여, 확장한(extends) subclass를 만들어 보았습니다. 이렇게 함으로써, 기본적인 클래스의 설계와 개발에 대해서 배웠으며, 좀 더 진보된 문법들을 다음 글에서 배우도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
