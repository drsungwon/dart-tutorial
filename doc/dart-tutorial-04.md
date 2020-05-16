# C++ 프로그래머를 위한 Quick Summary Part.1 

<!-- wp:paragraph -->
<p>개인적으로 초등학교때 BASIC과 PASCAL에 손을 대면서 프로그래밍을 접했습니다. 그리고 대학교에서 C, C++, Think-C, Assembly, PROLOG, LISP, FORTRAN, COBOL, Java 등의 다양한 언어를 다룬 것 같습니다. 회사에서는 여유가 없으니, C++만 구사했었는데, 교수라는 직업을 가지면서, 다시 취미 생활을 시작하여 JavaScript, HTML, CSS, Go, C#, Python 등을 조금씩 건드려 본 것 같습니다. 그러다 보니 느낀 점은, 최근의 언어들은 기존의 언어들을 충분히 겪어본 사람들이 만들다 보니, 서로 다른 언어 간에도, 유사한 문법들이 언어간에 나타난 다는 점입니다. 이런 경험을 토대로, 이미 C++과 Python 정도를 아는 사람을 위한 Dart 언어 기본 문법의 속성 요약을 2회에 걸쳐서 수행해 봅니다. 언어가 지원하는 문법이 방대한데, 하나 하나 모두 알고 프로그래밍 하기 보다는, 속성으로 살펴본 후 바로 프로그램 개발을 시작하는 것도 나쁘지 않다는 생각에서 입니다. 먼저, Part.1에서는 기초 문법에 대해서 다루며, 다음의 Part.2에서는 클래스와 Dart 언어의 특징 중 하나인 비동기 작업(async)에 대해서 다루겠습니다.    </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart를 처음 접하면서, C++과 Python에서 볼 수 있는 문법적 특성을 느꼈는데, 이는 아마도 Dart 언어를 만든 사람인 Gilad Bracha가 Java 프로그래밍 언어를 만드는데 참여한 사람이여서 그렇지 않을까 싶습니다. 이제는 Oracle Database과 오픈소스 Database인 MySQL을 소유하고 Oracle사는, Sun이라는 과거 UNIX 계열 운영체제인 Solaris와 자체 CPU인 Spark를 사용한 Workstation으로 유명했던 회사입니다. Gilad Bracha는, 현재 Toitware 라는 IoT 전용 운영체제 회사에서 새로운 운영체제와 언어를 만들고 있지만, Sun에서 Java 언어와 이를 위한 Virtual Machine을 개발했던 사람입니다. 따라서 C++과 Python을 익힌 사람이라면, Dart 언어를 배우면서, C++의 사촌인 Java를 만든 Gilad Bracha에 의해서, 저와 비슷한 문법적 경험을 할 것 같습니다. 이에 여기서는 C++과 대비되는 Dart 언어의 차이점을 빠르게 리뷰할까 합니다. 이 글에서는 문법적인 차이점만 빠르게 설명하므로, 개발 도구를 통한 수행과 결과는 별도로 설명하지 않습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>main()</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart도 C++과 같이 main()를 반드시 가져야 하며, 역할은 동일합니다. main()의 return 값이 없는 경우에 대해서, C++과 동일하게 void를 return 값의 타입으로 declare하며, 입력 파라메타가 없는 경우는, 입력 파라메타 부분을 비워두면 됩니다. 아래는 Dart 언어의 가장 간단한 Hello World 프로그램 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
   print('Hello, World!');
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>main()의 declare를 수행하는 첫 줄은 C++과 동일한 것을 알 수 있다. 함수의 본문을 define 할 때, 중괄호인 {}로 열고 닫는 것도 C++과 같습니다. 그리고 statement가 끝나는 지점에 semi-colon를 타이핑 하는 것도 같습니다. 터미날에 글자를 출력하는 함수는 "cout &lt;&lt;" 구문을 사용하지 않고, print 함수를 사용하는 것은 차이가 있습니다. 또한, 문자열을 열고 닫을 때에는, 인용구문 기호(" " 혹은 ' ')을 사용하는 것은 C++과 동일합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Comments</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart의 주석(Comment) 처리는 C++과 동일하다. 즉, 한 줄을 주석으로 만드는 경우는, 줄의 시작을 //으로 하면 되고, 복수의 줄을 주석 처리 할때는, /*로 시작하고 */로 마치면 된다.  </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Built-in Number Types</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart도 C++과 같이 내장 숫자형 데이타 타입이 있습니다.  C++과 유사하게 Dart 언어에서는 정수(integer), 실수(double), 이진(boolean) 타입을 지원 합니다. 먼저 main() 안에 정수, 실수, 이진 타입의 변수를 만들어서 임의의 값을 치환한 후, 값을 터미날에 출력하는 다음의 소스 프로그램을 참조 합니다. 각 print()의 결과 값은, 해당 라인의 오른쪽에 주석으로 적어 두었으니, 이해에 도움이 되기를 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  int i = 1;
  double d = 1.0;
  bool b = true;

  print(i); // 1
  print(d); // 1.0
  print(b); // true
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>Dart의 integer와 C++의 integer를 비교할때, 첫번째 차이점은 C++의 숫자형 데이타 타입은 C에서 유래 했기 때문에, 객체지향 클래스 기반의 객체가 아닌, 단순히 N개의 바이트로 구성된 컴퓨터 메모리 지만, Dart에서는 클래스 기반의 객체로 만들어 진다는 점 입니다. 둘째로 C++에서 숫자형 데이타 타입이 갖는 최대값과 최소값은 CPU와 운영체제가 몇 Bit 형 인가에 따라 가변적 이지만, Dart 언어의 경우는 현재 64 bit 이상으로 지원하지 않도록 제한되어 있으며, Dart VM(Virtual Machine)을 사용하는 경우는 최소 -2의 63승에서 최대 2의 63승 빼기 1의 값을 갖습니다. Dart 언어가 가지는 특징 중의 하나로서, Dart 프로그램을 JavaScript 프로그램으로 변환하는 기능을 사용하는 경우는, 최소 -2의 53승에서 최대 2의 53승 빼기 1의 값을 갖습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart의 double은 64 bit의 실수형 데이타 타입으로서, IEEE 754 표준을 따릅니다 [<a href="https://en.wikipedia.org/wiki/IEEE_754">출처</a>]. C++에서와 같이, 실수형 값을 다루는데 사용하는 점에서는 유사하나, 앞서의 integer 타입과 마찬가지로 클래스 기반의 객체입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Boolean 데이타 타입은, C++에서와 같이, 참(true)과 거짓(false) 값을 다루는데 사용하는 점에서는 유사하나, 앞서의 integer 및 double 데이타 타입과 마찬가지로, Dart에서는 클래스 기반의 객체로 동작합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Type Inference</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서는 위처럼 Built-in Data Type을 직접적으로 언급하기 보다는, Dart 언어가 알아서 타입을 유추하는 type inference 기능을 활용하는 것이 일반적 입니다. 앞서의 Built-int Number Types에서 설명한 프로그램을 Dart의 동적인 type inference 형태로 바꾼 소스 프로그램이 아래에 나타나 있습니다. 이 경우, integer, double 그리고 boolean의 구체적인 데이타 타입 대신 variable을 의미하는 var로 표현이 바뀐 것을 볼수 있습니다. 이 경우 var 타입의 변수는 오른쪽의 객체에 대한 레퍼런스(reference)를 왼쪽의 변수에 저장합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var i = 1;
  var d = 1.0;
  var b = true;

  print(i); // 1
  print(d); // 1.0
  print(b); // true
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>주의할 점은, 이미 값을 저장하고 있는 var 타입 변수에 다른 타입의 값을 저장하는 경우입니다. 만약 실수를 저장하는 var 변수의 값을 정수 변수로 바꾼다면, 새롭게 주어진 정수는 실수로 바뀌어 에러 없이 저장됩니다. 하지만 정수형 var 변수에 실수 타입의 값을 저장하려 한다면, Dart는 에러를 나타내고 진행을 중지합니다. 만약, 변수가 프로그램의 실행 중에 타입과 상관없이 값을 저장하기를 원한다면, var 대신 dynamic 타입으로 변수를 생성하면 됩니다. 아래는 var 타입이 아닌 dynamic을 사용하여 변수를 만든 후, 다른 타입의 값으로 치환하는 예제를 보여주며, 문제 없이 동작하는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  dynamic i = 1;
  dynamic d = 1.0;
  i = 2.0;
  d = 2;

  print(i); // 2.0
  print(d); // 2
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>프로그램을 수행하면서 값이 수시로 바뀌는 변수는 var (혹은 dynamic) 타입으로 선언합니다. 프로그램의 수행 중 변하지 않는 상수 값을 저장하는 경우에, Dart는 C++과 유사하게 const 데이타 타입을 사용합니다. const 데이타 타입의 상수는 compile시에 결정 되므로, 프로그램의 실행 중에 값의 변경은 불가능 합니다. 프로그램이 실행되면서 최초 한번은 값을 저장하지만, 이후로는 해당 값을 상수 값처럼 유지하는 경우를 위해서는 final 타입을 사용합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Built-in Data Collection Types</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart는 C++의 배열(array)과 STL(Standard Template Library)에 상응하는 데이타 저장 공간으로 List, Set 그리고 Map을 지원합니다. C++의 배열은 단순 컴퓨터 메모리(들)이고 STL은 클래스 타입으로 구현된 점과 비교하여, Dart는 모든 타입을 클래스 타입으로 구현하고 있습니다. 세가지 데이타 타입을 간단하게 구현한 예제는 다음과 같으며, 각각에 대한 결과는 print() 구문의 오른쪽에 주석으로 설명하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var mylist = [1, 2, 3]; // List
  var myset = {'C', 'C++', 'Go', 'Dart', 'Go'}; // Set
  var mymap = {1:'apple', 2:'banana'}; // Map

  print(mylist); // [1, 2, 3]
  print(myset);  // {C, C++, Go, Dart}
  print(mymap);  // {1: apple, 2: banana}
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>첫째로 Dart의 List는 C++의 배열과 유사하게, 동일한 타입의 데이타를 복수 개 저장하는 것이 가능합니다. List에 저장한 데이타는 개발자가 저장한 순서를 그대로 유지합니다. Dart에서 List는 대괄호 기호인 [ ]를 사용하여 표현 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>둘째로 Dart의 Set은 C++의 Set STL에 상응하여, 수학의 집합에 해당하는 개념을 지원합니다. 수학의 집합 개념을 지원하기에, 저장하는 데이타에 중복된 값이 없도록 하고, 저장한 데이타의 순서는 의미가 없습니다. Dart에서 Set은 중괄호 기호인 { }를 사용하여 표현 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>셋째로 Dart의 Map은 C++의 Map STL에 상응하여, 'Key' 값과 이에 해당 하는 'Value'의 쌍을 저장하는 것을 지원합니다. Key 값은 중복될 수 없으며, Value 는 중복이 가능합니다. 그리고 데이타가 저장된 순서는 의미가 없습니다. Dart에서 Map은 중괄호 기호인 { }를 사용하여 표현 하는 점에서 Set과 중복되지만, 저장하는 값이 "Key : Value"의 형태이기에, Dart 언어가 괄호의 형태에 상관없이 구분할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart의 Built-in Collection Type인 List, Set 그리고 Map에 대해서는 추후 기본 문법의 자세한 설명을 하는 부분에서 다시 설명할 것이며, 지금은 단순히 C++ 대비 차이점만 언급 하면서 지나가도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Conditional Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart의 조건문(conditional statement)는 C++과 동일합니다. if 구문, else if 구문, 그리고 else, break, continue 구문으로 이루어 지며, 사용하는 괄호도 동일합니다. Dart는 C++과 같이 switch 구문도 지원합니다. 기본적으로 거의 같지만 일부 다른 점이 있습니다. C++에서는 각각의 case 구문을 break로 구분할 수도 있고, 그렇게 하지 않을수도 있습니다. 중첩된 case 구문이 break 구문 없이 작성되면, 위의 case 구문에서 아래의 case 구문으로 프로그램의 수행이 이어지는데 이를 fall-through라고 부르며, 이는 break 구문을 만날때 까지 이어집니다. 만약 중첩된 case 구문들이 하는 일이 없이 중첩만 되다가 마지막에 있는 case 구문에서만 작업을 한다면, Dart와 C++의 차이점은 없습니다. 즉, 다음의 예제는 Dart와 C++에서 차이가 없는 형태입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var i = 0;

  switch(i) {
    case 0:
    case 1:
      print("No error");
  }
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>하지만, 중첩된 case 구문 중 마지막 case 구문이 아닌 경우에도 작업을 하도록 하고 있는데, break 구문이 없어서 fall-through를 수행하고자 했다면, 이는 C++에서는 문제가 없지만, Dart에서는 에러를 만들게 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var i = 0;

  switch(i) {
    case 0: // Error at here
      print("0");
    case 1:
      print("1");
  }
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이런 경우는 continue 구문과 print("0") 구문의 수행후 이동하고자 하는 시점에 Label을 지정하는 방법으로 C++과 유사한 스타일을 구현할 수 있지만, 개인적으로 프로그램의 특정 위치에 Label을 정하는 방법은, 과거 언어의 Go To 라는 문법이 현대 언어에서 지원은 되지만 사용하지 않도록 하는 입장과 같은 입장에서 사용하지 않도록 권장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Loop Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>기본적으로 Dart의 반복 구문은 C++과 조금의 차이를 제외하면 거의 동일합니다. for, while, do-while, break, continue 구문이 있다는 점에서는 동일 합니다. 작은 차이점으로는 List와 같이 복수의 데이타가 들어 있는 Data Collection Type의 경우 'in' 구문을 사용하여, 복수의 데이타에서 하나 씩 데이타를 추출하는 문법을 쓸수 있는 점 입니다. 아래의 예제는 List 안의 데이타를 하나씩 꺼내는 in 문법과, 전통적인 C++에서 처럼, 반복 횟수를 카운트 하는 변수를 통한 반복을 보여 줍니다. Modern C++에서도 유사한 문법을 제공하여, Data collection type의 경우에 range를 벗어나지 않도록 도움을 주고 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">void main() {
  var mylist = [1, 2, 3]; // List

  for(var item in mylist) {
    print(item);
  }

  for(var i=0; i&lt;3; i++) {
    print(mylist[i]);
  }
}
</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Functions</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart의 함수는 두 가지 형태로 이루어 집니다. 첫째로 함수의 이름이 있는 일반적인 형태의 함수로서, C++와 Dart 언어의 차이점은 없다고 볼 수 있습니다. 함수의 이름과, 입력 파라메타, 그리고 출력 파라메타의 타입으로 이루어진 형태를 의미합니다. 둘째로 (C++의 function pointer를 사용하는 경우와 유사하게) 함수의 이름이 없는 경우가 있습니다. 주로 짧은 문장을 구현하는 경우이면서, 함수를 입력 파라메타로 전달하는 경우에서 많이 볼 수 있는데, 짧은 함수를 임시로 만들어서 전달하는 목적으로 사용하는 경우입니다. 통상 anonymous 함수라고 부르는 경우인데, 다음 예제를 보면 이해가 바로 될 것으로 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void main() {
  var a = ((i) =&gt; print(i));
  a(1); // 1
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>위의 예제에서. 변수 a는 이름이 없는 anonymous 함수를 레퍼런스 하게 됩니다. 이 함수의 이름은 없지만, 입력 파라메타를 하나 받도록 되어 있으며, 문장에서 i에 해당합니다. 함수가 해야하는 작업은 화살표인 =&gt;의 오른쪽에 있습니다. 즉, 입력 받은 값을 i로 치환한 후, 그 값을 터미날에 출력하는 단순한 기능입니다. 함수의 실행은 C++의 fucntion pointer 처럼, 해당 함수를 레퍼런스하는 변수인 a의 이름을 활용하여 실행합니다. a를 함수 이름으로 하고, i에 해당 하는 입력 파라메타에 1을 전달한 것으로, 터미날에는 1을 출력하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Library Import</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서도 C++처럼 매우 많은 기능을 다양한 방법으로 제공합니다. 지금까지 보여준 예제들은 별도의 라이브러리를 사용하지 않아도 되는 기본 기능으로만 이루어 졌지만, Dart도 다른 언어들과 마찬가지로 Dart가 지원하는 기본 라이브러리 들이 있으며, 개발자 혹은 제3자가 만든 라이브러리를 사용하는 것도 가능합니다. Dart가 기본적으로 제공하는 라이브러리는 다음과 같으며, dart:core는 별도의 문법 없이도, 기본적으로 프로그램에 포함됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>dart:core : built-in types, collection, core functionality</li><li>dart:math : mathematical functionality, random number generator</li><li>dart:io : basic I/O functionality for Dart VM based apps</li><li>dart:html : DOM manipulation for browser-based apps</li><li>dart:convert : encoder/decoder (including JSON and UTF-8)</li><li>dart:acync : enable asynchronous programming</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>C++의 경우는 소스 코드에 #include 구문을 통해서 헤더 화일을 포함하는 작업이 필요한데, 이와 비교하여 Dart에서는 import 구문을 사용합니다. 위의 built-in 라이브러리를 사용하는 경우와, 개발자 혹은 제3자가 만든 화일을 포함하는 경우에 대한 예제가 아래에 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// Importing core libraries
import 'dart:math';

// Importing files
import 'directory/subdirectory/filename.dart';
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Part.2로 넘어가며</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Part.1에서 우리는 main() 함수, 각종 데이타 타입, 반복 및 조건 문장, 함수, 라이브러리 등의 기초적인 부분에 대해서 다뤘습니다. 다음 Part.2에서는 클래스, 비동기(async) 동작, 그리고 예외처리를 다룹니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":267,"align":"right","width":136,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="136" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
