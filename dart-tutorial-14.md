# Dart 기초문법 - Class 사용하기

<!-- wp:paragraph -->
<p>먼저 일반적인 개념에 대해서 설명합니다. 제품을 공장에서 출하하기 전에, 설계도(design document)를 만드는 작업이 있습니다. 예를들어 반도체 설계도가 만들어지면, 이를 통해서 실제 반도체 제품(product)을 공장에서 만들어 진다는 것을 생각하면 됩니다. 이와 유사하게, 객체지향 프로그래밍(object oriented programming)이라는 개발 기법에서, 소프트웨어에서 설계도와 같은 개념의 것을 클래스(class)라고 부릅니다. 그리고 제품에 해당하는 것을 객체/오브젝트(object)라고 부릅니다. 반도체를 예를 들었을때, 반도체에는 저장되는 데이타가 존재합니다. 그리고 데이타를 읽고 쓰는 행동과 지원된다면 의미있는 기능들이 동작합니다. 여기서 데이타를 말 그대로 데이타(data, properties)라고 부르고, 기능은 메소드(methods, operators)라고 부릅니다. 특별히 클래스/객체안에 포함되는 데이타는 클래스/객체의 멤버 데이타(member data)라고 하고, 기능은 멤버 메소드(member method)라고 부릅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Object Oriented Programming using Dart</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 모든 데이타 타입은 클래스로 만들어 집니다. 지금까지 알아온 int, double, String, bool, dynamic, var, Object가 모두 클래스 타입이라고 보면 됩니다. 그리고 int a;로 해서, 클래스 int 타입으로 만들어진 a 변수가 객체입니다. 따라서 int 설계도에서 실제 int 제품에 해당하는 a를 만든 겁니다. 설계도에서 만들어진 제품이 실제 설치 되고 동작이 되는 것처럼, 객체 들은 각각 고유의 값을 가지고 있으며, 같은 기능 이라도 각자가 가지고 있는 값에 따라서 다른 결과르 만들 수 있습니다. Dart에서 데이타 타입만 객체가 되는 것은 아니며, 함수와 null 값 마저도 객체이니 참조하기 바랍니다. 또한, Dart 언어에서는 모든 객체들이 Object 클래스 타입을 기반으로 해서 만들어 집니다. 이 부분에 대해서는 Class를 직접 만드는 단계에서 구체적으로 설명 하도록 하겠습니다. 클래스에 대한 개념을 배웠으니, 우리가 이미 알고 있는 클래스들에 대해서 좀 더 구체적으로 설명하면서, 클래스와 객체에 대해서 이해해 보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Integer Class</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 int 클래스에 대한 설명은 공식 홈페이지에서 자세하게 확인이 가능합니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/int-class.html">참조</a>]. int 클래스에서 제공하는 몇가지 요긴한 메소드의 사용 예제를 darttutorial-14-01.dart 에서 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-01.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/int-class.html

void main() {
  int num1 = 1;
  int num2;
  String myString;

  // Returns the absolute value
  num2 = num1.abs();
  print("$num2");

  // Returns the greatest common divisor
  num1 = 3;
  num2 = num1.gcd(6);
  print("$num2");

  // Returns a string representation
  myString = num2.toString();
  print("$myString");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>먼저, 객체의 메소드를 실행하는 방법은 간단합니다. "객체이름.메소드이름()"처럼 하기만 하면 됩니다. 먼저 num1 객체에 1 값으로 초기화한 것을 볼 수 있습니다. 그리고 num1 객체의 메소드인 abs()를 실행하고자 한다면, num1.abs() 처럼 하면됩니다. 이렇게 함으로써, num1 객체가 가지는 멤버 데이타인 1의 절대값을 abs() 함수로 계싼한 후, return 하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>gcd()는 최대공약수(Greatest Common Divisor)를 계산하는 메소드입니다. num1.gcd(6)처럼 호출 하였는데, 이는 num1 객체의 값과 입력 파라메타로 받은 6간의 최대공약수를 계산합니다. 현재는 3이 결과입니다. 마지막 예제는 객체가 가지고 있는 정수 값을 문자열로 변환하는 기능입니다. 이번에는 num2 객체의 멤버 메소드로 호출하였으며, num2.toString()를 통해서 num2가 가진 값 3을 문자열로 바꿔서 출력하도록 하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Double Class</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 double 클래스에 대한 설명은 공식 홈페이지에서 자세하게 확인이 가능합니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/int-class.html"></a><a href="https://api.dart.dev/stable/2.7.1/dart-core/double-class.html">참조</a>]. double 클래스에서 제공하는 몇가지 요긴한 메소드의 사용 예제를 darttutorial-14-02.dart 에서 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-02.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/double-class.html

void main() {
  double num1 = 1.4;
  double num2;
  int num3;
  String myString;

  // Returns the absolute value
  num2 = num1.abs();
  print("$num2");

  // Returns a string representation
  myString = num2.toString();
  print("$myString");

  // Returns the greatest integer no greater than member data
  num3 = num1.floor();
  print("$num3");

  // Returns the greatest integer double value no greater than member data
  num2 = num1.floorToDouble();
  print("$num2");

  // Returns the greatest integer no greater than member data
  num3 = num1.round();
  print("$num3");

  // Returns the integer double value obtained by discarding any fractional digits
  num2 = num1.truncateToDouble();
  print("$num2");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>예제에서 사용한 멤버 메소드는 순서대로 abs(), toString(), floor(), floorToDouble(), round(), truncateToDouble() 입니다. int 클래스의 예제와 겹치는 부분도 일부 있습니다. 각각의 자세한 의미는 해당 홈페이지를 통해서 직접 확인하고, 이해해 보는 것으로 하겠습니다. 추가로 아래의 darttutorial-14-03.dart 처럼, 정수, 실수 혹은 문자열에 "."을 이어서 찍고, 각각의 클래스 타입에 속한 멤버 메소드를 호출하는 방법도 가능합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-03.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/double-class.html

void main() {
  var num;

  // Returns the absolute value
  num = 1.4.abs();
  print("$num");

  // Returns a string representation
  num = 1.4.toString();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.floor();
  print("$num");

  // Returns the greatest integer double value no greater than member data
  num = 1.4.floorToDouble();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.round();
  print("$num");

  // Returns the integer double value obtained by discarding any fractional digits
  num = 1.4.truncateToDouble();
  print("$num");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>눈으로 보기엔, 그냥 단순한 정수/실수 숫자 혹은 문자열로 보이지만, Dart는 이런 값들을 모두 클래스로 처리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>String Class</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>문자열은 숫자 만큼이나 프로그래밍에서 많이 사용하는 (어쩌면 숫자보다 저 많이 사용하는) 데이타 타입입니다. Dart의 문자열에 대한 자세한 설명은 홈페이지에서 참조할 수 있습니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/String-class.html">참조</a>]. 문자열에 대해서도 darttutorial-14-04.dart 예제 프로그램을 통해서 이래를 해보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-04.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/String-class.html

void main() {
  var string1 = "Hello Dart!";
  var string2;
  var num;

  // Sub-slicing (or Sub-string)
  string2 = string1.substring(0,5);
  print("$string2");

  // Index Operator
  string2 = string1[0];
  print("$string2");

  // Concatenation
  string2 = "Hello" + " " + "Dart" + "!";
  print("$string2");

  // Using String Properties
  num = string1.length;
  print("$num");

  // Interpolate the value of expressions within strings
  string2 = "$string1 has ${string1.length} letters";
  print("$string2");

  // Converts all characters to lower case
  string2 = string1.toLowerCase();
  print("$string2");

  // Converts all characters to upper case
  string2 = string1.toUpperCase();
  print("$string2");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>substring()은 문자열 객체의 정해진 처음 위치 부터 마지막 위치의 바로 앞까지의 글자들을 꺼내서, 새로운 문자열을 만듭니다. string1에 현재 "Hello Dart!"가 있습니다. 명심해야 하는 사항은, Dart에서 순서를 세는 경우가 있다면, 0부터 센다는 점입니다. 사람은 1부터 세지만, Dart를 포함한 대부분의 프로그래밍 언어들은 0부터 셉니다. 따라서, string2 = string1.substring(0,5);은 0번째 글자인 H로 시작해서, 5번째 글자인 빈칸(space)의 바로 앞인 'o' 글자까지를 포함하는 새로운 문자열 "Hello"를 만든후, 이를 string2에 저장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Index 연산자인 [ ] 기호는 문자열에 사용했을떄, 특정 위치의 글자를 꺼내는 역할을 합니다. 예제 프로그램에서 string2 = string1[0];은 0번째 문자열을 string1 문자열에서 꺼냅니다. 따라서, 글자 H를 string2에 저장하는 역할을 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Concatenation은 수학으로 이야기 하면 "+" 연산자와 같다고 합니다. 이 연산자가 문자열에 사용되면, 문자열들을 연결해서 새로운 문자열을 만드는 역할을 합니다. 따라서 string2 = "Hello" + " " + "Dart" + "!";은 4개의 문자열을 하나로 합쳐서, string2에 저장하는 역할을 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이번에는 정수와 실수에 사용하지 않았던 property 문법을 사용해 봅니다. Property는 데이타를 의미하며 함수는 아닙니다. 따라서 사용시 ()의 입력 파라메타를 기술하는 부분은 없습니다. 문자열이 가진 여러 property 중 length를 사용하는데, 이는 문자열이 가진 글자의 갯수를 나타냅니다. 따라서 num = string1.length;를 수행하면, "Hello Dart!"를 구성하는 글자 갯수(빈칸 포함)인 총11개 글자를 계산한 후, 숫자 11로 치환합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>String Interpolation은 이미 우리가 print()을 사용하면서 익숙하게 사용한 기능의 정식 명칭 입니다. print("$string2");를 수행하면, 이 구문 위에서 string2가 있는 경우, string2의 값을 출력하도록 하였습니다. 이렇게 문자열에 ${ ... } 처럼 되어 있으면, { } 안에 해당하는 표현 혹은 변수를 찾아, 이의 결과 혹은 저장값을 해당 위치에 대체하여 줍니다. 변수 이름과 같이 하나의 단어인 경우는 { } 기호가 필요 없습니다. 따라서, 예제에서 string2 = "$string1 has ${string1.length} letters"; 문장은 앞서 string1에 저장한 문자열, 그리고 그 문자열에 속한 글자의 갯수를 문자열 안에 대체하여 저장해 줍니다. 그리고 이 값들이 포함된 새로운 문자열을 string2에 저장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>toLowerCase()와 toUpperCase()는 이름처럼 직관적인 기능을 제공합니다. 즉, 문자열의 모든 글자응 소문자 혹은 대문자로 하는 새로운 문자열을 만들어 줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>darttutorial-14-04.dart 예제 프로그램의 수행 결과를 아래에 명시하였으니, 본인이 생각한 결과와 맞는지 확인해 보고, 실제 프로그램을 수행하여 결과를 확인해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Hello
H
Hello Dart!
11
Hello Dart! has 11 letters
hello dart!
HELLO DART!
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Boolean Class</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Boolean 데이타 타입은 true 아니면 false의 매우 단순한 값을 저장하지만, 클래스로 만들어져 있으며, 몇가지 property와 method를 제공합니다. 아래의 darttutorial-14-05.dart 예제는 여러번 등장한 toString()이 Boolean 클래스에도 있으며, 유사한 용법으로 사용되는 것을 확인할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-05.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/bool-class.html

void main() {
  bool bool1 = true;
  var myString;

  // Print boolean object
  print("$bool1"); // true

  // Convert boolean object to String
  myString = bool1.toString();
  print("$myString"); // true
}
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Class Operators (is &amp; is!)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>객체지향 프로그래밍을 하다보면, 현재 다루는 데이타가 어떤 타입인지 확인이 필요한 경우가 있습니다. 이런 경우 사용 가능한 문법인 is와 is! 입니다. 특히 동적으로 변수를 생성하는 var 혹은 dynamic의 경우는, 프고로그램이 수행되면서 저장하는 데이타 타입이 수시로 바뀔수 있습니다. 따라서, 프로그램 수행 시점에서 타입을 알아야 하는 경우에 요긴하게 사용할 수 있는 분법입니다. 아래의 darttutorial-14-06.dart 예제를  통해서 이 문법이 어떻게 동작하는지 확인할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-14-06.dart 

void printType(var para) {
  if(para is int) {
    print("[type] int");
  } else if(para is double) {
    print("[type] double");
  } else if(para is String) {
    print("[type] string");
  } else if(para is bool) {
    print("[type] double");
  } else {
    print("[type] not identified");
  }
}

void main() {
  int num1 = 1;
  var num2 = 1.1;
  dynamic num3;

  printType(num1);
  printType(num2);

  num3 = num1;
  printType(num3);

  num3 = num2;
  printType(num3);

  num3 = "number";
  printType(num3);  
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>printType() 함수를 보면, 입력 파라메타의 타입에 따라서 화면에 타입을 출력해 주는 기능을 확인 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart는 객체지향 언어로서, 다루는 모든 데이타가 객체로 실현됩니다. 우리는 이번 글에서 설계도에 해당하는 클래스와 이들이 실제 데이타를 가지면서 실세계에 의미있는 형태로 동작하는 객체에 대해서 배웠습니다. 그리고, 지금까지 배워온 int, double, String, bool, var, Object, dynamic 등이 객체를 저장하는 것들 임을 배웠습니다. 이들은 멤버 데이타와 멤버 메소드를 가지며, 보다 구체적인 내용은 공식 홈페이지의 관련 메뉴얼을 참조하도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":134,"height":48} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="134" height="48"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
