# Dart 기초문법 - Number Types

<!-- wp:paragraph -->
<p>Dart는 정수과 실수를 다루기 위하여, 각각 int(integer) 타입과 double 타입을 지원합니다. 이 두 타입의 값을 저장하는 변수와 상수를 어떻게 만드는지에 대해서는, 이미 Be.Programmer [07]에서 다뤘습니다. 변수의 타입(int, double)을 지정 하기도 했고, var/dynamic/Object 타입을 사용하여, 정수와 실수 타입의 데이타를 저장할 수 도 있습니다. 여기서는 이 들을 어떻게 사용하는 지에 대해서 다루도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>정수 데이타 타입 (int, integer)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 int 데이타는 64bit 보다 작도록 제한됩니다. 그리고, 다양한 플랫폼을 지원할 수 있는 Dart의 특성상, Dart VM을 통하여 실행하는 경우의 int는 -2^63 ~ 2^63 -1 의 값을 표현할 수 있고, Dart 프로그램을 JavaScript로 변환하여 실행하는 환경에서는 -2^53 ~ 2^53 -1의 값을 표현할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>실수 데이타 타입 (double, floating-point)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서 실수 데이타는 double 데이타 타입으로 나타냅니다. 원래 컴퓨터에서 실수형 데이타를 다루는 것은 매우 복잡한 작업 중의 하나입니다. Dart는 컴퓨터에서 실수 데이타를 다루는 표준 방법인 IEEE 754 방식을 지원하며, 64bit의 처리를 합니다. IEEE 754의 64bit Double 처리 방식에 대해서는 [<a href="https://en.wikipedia.org/wiki/Double-precision_floating-point_format">참조</a>] 문서를 통해서 더 상세한 내용을 확인 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>숫자 데이타 연산자 (Arithmetic Operators)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>정수와 실수는 수학에서 다양한 연산을 위해서 사용합니다. Dart에서도 수학의 개념을 구현할 수 있도록 연산자를 제공하고 있으며, 대부분 수학과 유사한 개념을 옮겨 놓고 있습니다. 대표적인 연산자들을 하나씩 알아 보도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Add</em> 더하기는 수학과 같은 '+' 기호를 사용합니다.  별도의 설명이 필요 없겠죠.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Subtract</em> 빼기도 수학과 같은 '-' 기호를 사용합니다. 별도의 설명은 하지 않습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Minus Sign</em> 마이너스 부호는 수학과 같이 '-' 기호를 숫자 앞에 붙이면 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Multiply</em> 곱하기는 개념은 수학과 같지만, 알파벳의 'x (엑스)'와 헷갈리지 않도록 하기 위하여, '*' 기호를 사용합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Divide</em> 나누기는 수학과 좀 많이 다릅니다. 정수/실수 구분없이 '/' 기호를 사용하면, 결과는 소숫점을 갖는 하나의 숫자를 나타냅니다. 특이하게 생긴 '~/' 기호는 정수 결과를 나타내는데, 몫을 나타낸다고 생각하면 이해가 빠르겠지요. 마지막을 세번째 나누기 기호는 '%'이며, 정수로 몫을 구한 후에 나머지를 정수 형태로 나타냅니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>동적 타입 변수들을 만들어서 정수와 실수에 대해서 위의 연산자들을 적용한 예제 프로그램이 아래에 나타나 있습니다. 첫번째 부분은 정수들에 대한 연산이고, 두번째 부분은 실수들에 대한 연산이고, 세번째 부분은 실수와 정수를 섞어서 계산한다는 예제를 보여줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-08-01.dart

void main() {
  dynamic num1 = 9;
  dynamic num2 = 4;
  dynamic res1 = num1 + num2;
  dynamic res2 = num1 - num2;
  dynamic res3 = num1 * num2;
  dynamic res4 = num1 / num2;
  dynamic res5 = num1 ~/ num2;
  dynamic res6 = num1 % num2;

  // print 13 5 36 2.25 2 1
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4.0;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0
  print("$res1 $res2 $res3 $res4 $res5 $res6");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>수학에는 없는 기호가 있는데, 바로 '++' 기호(연산자)입니다. 사용 문법은 단순한데, 변수 a가 있을때, ++a 혹은 a++로 사용하는데, 만약 다른 문장과 섞어서 사용하지 않고, 한줄에 ++a 혹은 a++만 있다면, 둘 모두 a = a + 1과 같은 의미입니다. 하지만 다른 문장과 섞여서 사용하면, 둘은 서로 다른 의미를 나타냅니다. 아래의 darttutorial-08-01.dart 예제를 동작시키면, 두번째와 세번째 print 구문에서 서로 다른 결과가 나오는 것을 알 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-08-01.dart

void main() {
  dynamic var1 = 1;
  print("$var1"); // Print 1

  var1 = ++var1 + 10;
  print("$var1"); // Print 12

  var1 = var1++ + 10;
  print("$var1"); // Print 22
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>첫번째 print 구문에서는 var1 변수를 만들고 1로 초기화 한 값을 그대로 출력합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>두번째 print 구문에서는 12의 결과가 나왔는데, 이유는 다음과 같다. var1 = ++var1 + 10;을 해석하면, ++ 연산자가 변수 앞에 있는 경우에 있어서, ++ 연산자가 다른 연산자인 + 및 = 기호화 같은 라인에 있는 것을 볼 수 있습니다. 이런 경우 ++ 연산자가 변수 앞에 있는 경우는, 다른 연산자 보다 먼저 작업을 합니다. 따라서 위의 줄은 1) var1의 값을 1만큼 증가 시키고, 2) 앞서 1)의 결과에 10을 더한 후, 3) 더한 결과를 var1에 다시 저장합니다. 따라서 var1이 1로 초기화된 상태에서, 1)을 수행하면 2가 되고, 2)를 수행하면 다시 12로 증가하며, 이를 3)에서 var1에 저장하는 것을 확인할 수 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>세번째 print 구문에서는 ++ 연산자가 var1의 뒤에 놓인 것을 볼수 있습니다. ++ 연산자가 변수 뒤에 있는 경우는, 앞서 두번째 경우와 반대로 동작합니다. 즉, 같은 라인의 다른 연산자들을 먼저 수행하고, 나중에 ++ 연산을 합니다. 따라서 1) var1의 값에 10을 더한후, 2) 앞서 1)의 결과를 var1에 저장한 후, 3) var1의 값을 1만큼 증가 시킵니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>'--' 연산자도 있으며, '++' 연산자와 마찬가지로 --a 혹은 a-- 처럼 사용합니다. 의미는 a = a - 1로 해석합니다. 다른 연산자와 함께 사용하는 경우의 우선순위는 '++' 연산자와 동일합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>숫자 데이타 관련 기타 기능</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>나중에 클래스(Class)와 함수(Function)을 배우면, 더 많은 내용을 배우겠지만, Dart 언어는 숫자 외에도 매우 많은 기능을 제공합니다. 다음의 darttutorial-08-03.dart 프로그램은 몇가지 유용한 기능을 보여줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-08-03.dart

void main() {
  // integer in hexadecimal format
  var num1 = 0x0F; 
  // print 15
  print("$num1");

  // exponential number format
  var num2 = 1.1e2;
  // print 110.0
  print("$num2");

  // String -&gt; int
  var num3 = int.parse('1');
  // print 1
  print("$num3");

  // String -&gt; double
  var num4 = double.parse('1.1');
  // print 1.1
  print("$num4");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>num1은 10진법으로 값을 표현하는 일반적인 방식 외에, 16진법으로 숫자를 표현하는 것을 보여줍니다. 0x로 시작하는 숫자는 16진법으로써, 16진법은 1자리에 0~15까지의 10진법에 해당하는 의미를 표현 가능한데, 10진법의 10/11/12/13/14/15가 각각 A/B/C/D/E/F로 표현 됩니다. 따라서 num1을 출력하면 16진법 F에 해당하는 10진법 15가 출력됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>num2는 지수 로그 값을 표현하는 방법을 보여줍니다. 1.1에 지수로그 2를 계산하여, 두번째 print 구문에서 110.0이 출력되는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>num3와 num4는 숫자로만 만들어진 문자열이 주어 졌을때, 문자열을 숫자로 변환하는 것을 보여줍니다. num3는 정수 1의 문자열이므로, 1의 정수값이 전달되며, num4는 실수 1.1의 문자열이 저장되어 있으므로, 이를 실수로 변환한 값을 num4에 저장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이번 글에서는 수학 계산을 Dart 언어에서 수행하기 위한 방법을 알아 보았습니다. Dart 언어의 정수와 실수 데이타 타입과 연산자 들에서 학습 하였으며, 부가적인 기능 등에 대해서 설명 하였습니다.  </p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":138,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="138" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
