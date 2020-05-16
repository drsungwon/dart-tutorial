# Dart 기초문법 - Boolean &amp; Conditional Statement

<!-- wp:paragraph -->
<p>지금까지 살펴본 정수, 실수 및 문자열은 수학과 웹/책 등의 일상적인 환경에서 다룰 수 있는 데이타 타입들 입니다. 이 글에서 살펴볼 Boolean은 접해 본 사람도 있지만 다소 낯선 사람도 있을 수 있는 분야 입니다. 이산수학(discrete mathematics) 등 수학에서는 두가지 값으로 만 이루어진 문제를 다루는 분야가 있습니다. 그리고 Boolean 타입을 가장 많이 사용하는 프로그램에서의 역할은, 프로그램의 수행중에 왼쪽 혹은 오른쪽을 선택하는 경우의 문법입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Boolean Types</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Boolean 데이타 타입의 의미는 두 가지의 값으로 이루어 졌다는 의미 입니다. 통상 논리 연산이라고도 하는데, 두가지 값이란 <em>true</em> 혹은 <em>false</em>를 의미한다. Boolean 데이타는 static한 타입으로는 bool로 나타내며, dynamic 타입인 var, dynamic 등도 동일하게 사용할 수 있습니다. darttutorial-10-01.dart에는 static 타입의 logic1을 bool 타입으로 만든 후, true 값을 저장하는 예제를 보여 줍니다. 그리고 logic2를 dynamic 타입으로 만든후, false 값을 저장하는 예제를 보여 줍니다. print 구문을 사용하여 두 값을 출력하면 true false 처럼 결과가 출력됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-01.dart

void main() {
  bool logic1 = true;
  dynamic logic2 = false;

  print("$logic1 $logic2");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Boolean Operators</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>두 가지 값을 갖는 Boolean 데이타는 전용의 연산자가 있으며, 통상 논리 연산자(logic operator)라고 부릅니다. 아마도 수학 기호에서 이미 봐 왔을 익숙한 연산자들 일 겁니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Equal (==)</em> 연산자는 두 값이 같은 지를 검사합니다. 수학에서는 등호 기호 =를 하나만 사용해도 비교를 하는 용도로 사용할 수 있지만, 프로그래밍 언어들에서는 같은 기호를 두가지 이상의  의미로 사용할 수 없습니다. 따라서 등호는 오른쪽의 값을 왼쪽으로 전달하는 assignment 용도로만 사용하며, 두 값을 비교하고자 한다면, 등호를 두번 연속적으로 써야 합니다. Equal 연산자는 두 값이 같다면 true, 그렇지 않고 다르면 false로 처리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Not-equal (!=)</em> 연산자는 두 값이 다른 지를 검사합니다. 위의 Equal에 반대되는 개념으로, 비교하는 두 값이 다르면 true, 같으면 false로 처리합니다. 수학에서는 등호 위에 사선을 긋는 연산자를 사용하지만, 프로그래밍에서는 키보드에 존재할 수 있는 버튼 갯수의 제약으로 인하여, 두 개의 글자를 연이어서 연결함으로써 사용합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>다음은 두 값 중 어느쪽이 큰지 혹은 작은지를 비교하는 연산자들이 있습니다. 이들은 <em>Greater than (&gt;), Greater than or equal to (&gt;=), Less than (&lt;), Less than or equal to (&lt;=) </em>연산자들 입니다. 순서대로 왼쪽의 값이 오른쪽 보다 큰 경우, 왼쪽의 값이 오른쪽 보다 크거나 같을때, 오른쪽 값이 왼쪽 보다 큰 경우, 오른쪽 값이 왼쪽 보다 크거나 같을때 true를 나타내며, 그렇지 않은 경우는 false로 처리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Not (!) 연산자는 하나의 값에 대해서, 원래 가지고 있는 값을 반대로 뒤집는 역할을 합니다. 만약 true 값에 대해서 Not 연산자를 사용하면 false로 처리합니다. 반대로 false 값에 대해서 Not 연산자를 사용하면 true로 처리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>AND (&amp;&amp;)</em> 연산자도 수학에서 가져온 연산자로써, 두 값이 모두 true 인경우는 true이며, 그렇지 않은 경우는 false 입니다. 문장으로 풀면 "A 조건과 B 조건이 모두 true 이면 true"로 해석합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>OR (||) </em>연산자도 수학에서 가져온 연산자로써, 두 값중 하나라도 true 이면, true로 처리합니다. 문장으로 풀면 "A 조건과 B 조건 중 하나라도 true 이면 true"로 해석합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>지금까지 설명한 논리 연산자들을 아래의 darttutorial-10-02.dart 프로그램의 예제를 통해서 이해하도록 합니다. 복잡하지 않은 연산자들이므로 별도의 설명은 하지 않습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-02.dart

void main() {
  var cond1 = true;
  var cond2 = false;
  var num1 = 1;
  var num2 = 9;

  var res1  = (cond1 == cond2);
  var res2  = (cond1 != cond2);
  var res3  = (num1 &gt; num2);
  var res4  = (num1 &lt; num2);
  var res5  = (num1 &gt;= num2);
  var res6  = (num1 &lt;= num2);
  var res7  = (!cond1);
  var res8  = (!cond2);
  var res9  = (cond1 &amp;&amp; cond2);
  var res10 = (cond1 || cond2);

  // print false true
  print("$res1 $res2");

  // print false true false true
  print("$res3 $res4 $res5 $res6");

  // print false true false true
  print("$res7 $res8 $res9 $res10");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Conditional Statements (if, else if, else)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 if 구문은 영어 의미 그대로 "만약 ~ 하다면"으로 해석합니다. 프로그램의 수행을 특정 조건에 맞춰서 서로 다른 방향으로 바꿔 주는 역할을 합니다. if 구문은 예제 프로그램을 먼저 이해한 후 설명을 하도록 합니다. 다음의 darttutorial-10-02.dart를 수행해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-02.dart

void main() {
  var num1 = 1;
  var num2 = 2;

  if(num1 &gt; num2) {
    print("num1 is greater than num2");
  } else if(num1 == num2) {
    print("num1 equal to num2");
  } else {
    print("num1 is less than num2");
  }
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>이 프로그램은 결과로 num1 is less than num2를 출력합니다. if 문법은 "if(a) { ... }"와 같습니다. a 조건이 true 이면 { } 안의 문장을 수행합니다. 만약 a 조건이 false 라면, { }안으로 들어가지 않고, if 구문에 상응하는 else if 혹은 else 구문이 있는지 확인 합니다. darttutorial-10-02.dart에서, if 구문에서 검사하는 조건이 num1 &gt; num2인데, num1은 1이고 num2는 2 이므로, 이 문장의 결과는 1 &gt; 2 이므로 false 입니다. 즉, if 구문 뒤의 { }에는 들어가지 않으므로, 다음 조건인 else if ((num1 == num2) { ... }로 이동합니다. else if는 앞의 if 구문이 false인 경우, 후속으로 조건 검사를 하기 위하여 사용합니다. 1 == 2도 true가 아니므로, 자연스럽게 다음 조건인 else로 이동하게 됩니다. else 구문은 별도로 조건을 검사하지 않고 뒤의 { } 안으로 들어가게 됩니다. 앞에서 수행한 조건 검사가 모두 false가 되어서, 이에 대한 후속 작업을 해야 하는 경우에 사용합니다. 따라서 세번째 print 구문만 수행되는 것니다. 만약 num2의 값을 1로 바꿔서 실행한다면, num1과 num2가 같을때 수행하는 두번째 print 구문만 출력됩니다. 만약 num2를 0으로 바꿔서 실행한다면, 첫번째 if() 구문이 true 이므로, 첫번째 print 구문만 출력하고 프로그램을 종료합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Conditional Statements (switch, case, break, default)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>if, else if, else 구문을 사용하여도 문제가 없지만, 조건 검사의 종류가 많고 복잡한 경우, Dart 언어는 보다 직관적인 문법으로 switch, case, break, default 구문을 제공합니다. 앞서의 if 구문들과 마찬가지로 예제 프로그램인 아래의 darttutorial-10-04.dart를 먼저 실행해 보고, 이에 대한 설명을 수행하도록 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-04.dart

void main() {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("CLOSED");
      break;
    case 'PENDING':
      print("PENDING");
     break;
    case 'APPROVED':
      print("APPROVED");
      break;
    case 'DENIED':
      print("DENIED");
      break;
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>switch 구문은 switch( command ) { ... } 처럼 사용하며, command 변수가 갖는 값에 부합하는 경우에 대한 동작을 { ... } 안에서 찾는 작업을 합니다. { ... } 안에는 case 구문이 있으며, 여기에 command 조건이 부합하기를 희망하는 조건을 작성합니다. 예를 들면, case 'OPEN':으로 작성을 하면, command 변수가 문자열 "OPEN"과 같은 값일 경우에 수행하는 문장들이 기술되어 있다는 의미입니다. 예제 프로그램에서 command 변수는 'OPEN' 문자열을 가지고 있으므로, 다른 case 구문은 무시하게 되며, case 'OPEN': 구문을 수행하게 됩니다. 이 경우, case 'OPEN': 구문에 있는 break; 구문까지의 작업을 수행하는데, 이 경우는 한줄 뿐으로 단순하게 화면에 "OPEN"이라는 글자만 출력하는 작업인 print("OPEN");를 수행합니다. 만약 command 변수가 'DENIED' 값을 가지고 있다면, 이 프로그램은 print("DENIED");을 수행합니다. 만약 command 변수가, case 구문 중 어디에도 속하지 않는 "OK" 값을 같는 다고 가정하면, 어떠한 case 구문에도 부합하지 않으므로, 이러한 경우는 default: 구문에서 정의한 동작을 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>darttutorial-10-04.dart는 command 값에 따라 서로 다른 동작을 하도록 만든 경우입니다. 하지만, 실제 상황에서는 복수의 조건에서 같은 동작을 하는 경우가 있습니다. 예를 들어, 대소문자를 구분하지 않는 경우 'close'와 'CLOSE'가 같은 동작을 수행하는 경우입니다. darttutorial-10-05.dart 프로그램은 이런 경우에 대한 예제 프로그램입니다. 두개의 case 구문이 중간에 어떠한 문장도 포함되지 않은 상태에서, 연속적으로 연결되어 있는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-05.dart

void main() {
  var command = 'close';
  switch (command) {
    case 'close':
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open':
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>혹시 C/C++과 같은 언어에 경험이 있다면, darttutorial-10-06.dart 처럼 소문자인 경우에 대해서, 대문자로 입력하라는 경고 문구를 출력하되, 대문사/소문자 상관없이 동작하는 구문인 print("CLOSE"); 혹은  print("OPEN");를 출력하고 싶을 수 있습니다. Dart는 이런 구문을 지원하지 않습니다. 따라서 print("Use uppercase."); 구문이 들어간 case 'close':와 case 'open':는 에러를 유발하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-06.dart

void main() {
  var command = 'close';
  switch (command) {
    case 'close': // Error
      print("Use uppercase.");
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open': // Error
      print("Use uppercase.");
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Assert Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어에서는 디버그를 지원하기 위한 용도의 문법들이 있으며, assert( condition ); 구문이 대표적인 용도입니다. assert( ... ) 구문은 프로그램을 debug 모드로 실행 시켰을때에만 동작하는데, condition이 true 조건이면 아무런 일이 없지만, condition이 false가 되면 프로그램의 수행을 중지 시킵니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>아래의 darttutorial-10-07.dart를 수행하면, bool1과 bool2가 동일하게 true이므로, 마지막의 print 구문이 실행됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-07.dart

void main() {
  var bool1 = true;
  var bool2 = true;

  assert(bool1 == bool2);
//assert(bool1 != bool2);

  print("Completed!");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>하지만, 아래의 darttutorial-10-08.dart를 수행하면, bool1과 bool2가 동일하기에 assert 구문안은 false가 됩니다. 따라서, 마지막의 print 구문이 실행되지 못하고, 해당 assert 구문에서 프로그램의 에러가 발생하고 멈추는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-10-08.dart

void main() {
  var bool1 = true;
  var bool2 = true;

//assert(bool1 == bool2);
  assert(bool1 != bool2);

  print("Completed!");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>프로그램의 동작이 멈춘 화면을 참조로 아래와 같이 캡쳐하여 본문에 포함 시켰습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":400} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-11.04.29.png" alt="" class="wp-image-400"/></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이번 글에서는 프로그램의 흐름이 단순히 위에서 아래로 폭포수처럼 흐르지 않고, 중간에서 왼쪽 혹은 오른쪽과 같이 분기가 이루어 지는 문법을 배웠습니다. 이를 위한 중요한 데이타 타입인 true/false 값을 갖는 Boolean 데이타 타입에 대해서도 배웠습니다. 분기를 문법으로는 if, else if, else 및 switch 구문에 대해서도 다루었습니다. 마지막으로 디버그시에 프로그램이 특정 조건에 부합(혹은 부합하지 않으면) 프로그램의 수행을 중단 시키는 assert 구문에 대해서도 배웠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":135,"height":48} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="135" height="48"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
