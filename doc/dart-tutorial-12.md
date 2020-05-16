# Dart 기초문법 -&nbsp;</strong>Functions

<!-- wp:paragraph -->
<p>Function은 함수라고 부르며, 수학의 함수를 생각한다면 비슷한 개념입니다. 간단히 수학에서의 간단한 함수 예제를 보면 <em>y = f(x)</em>의 형태입니다. 이 경우, 함수의 이름은 <em>f </em>이며, 함수 <em>f</em>가 입력 파라메타로 <em>x</em>를 받아서, 작업을 마치면, 결과를 <em>y</em>에 저장한다는 의미인 것을 기억하면 됩니다. 마찬가지로 Dart 프로그램의 함수도 함수의 이름을 가지며, 입력 파라메타를 받아서 정해진 작업을 수행한 후, 결과를 return 하도록 만들어져 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>main() 함수와 print() 함수의 이해</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이미 우리는 친숙한 두가지 함수를 지속적으로 사용하고 있습니다. 하나는 화면에 문자열을 출력하기 위한 용도의 print(..) 입니다. 입력 파라메타로 문자열을 하나 받는 함수로서, 이름이 print 이며, 정해진 작업은 화면에 글자를 출력하는 역할입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>그 다음으로 익숙한 함수는 main 입니다. main 함수의 일반적인 형태는 void main() 이였습니다. 이는 함수 이름은 main 이며, 별도의 입력 파라메타를 받지 않는 용도로 하고, 별도의 결과를 return 하지 않는다는 의미(void)로 작성한 것 입니다. main 함수에서 수행하는 작업이 main() 뒤의 { ... }로서, 지금까지 우리가 채워놓은 내용이 바로 main 함수에서 수행한 내용들이 였던 겁니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>print() 함수가 수행하도록 명령을 내린 사람(함수를 호출(call 또는 invoke)한다고 함)은 개발자 본인입니다. main() 함수의 경우는, 개발자는 채울뿐 호출하는 쪽은 Dart 언어로 만든 프로그램을 수행하는 운영체제라고 보시면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>수학의 함수와 컴퓨터 프로그램의 함수가 유사한 개념인 것을 맞지만, 차이점도 존재 합니다. 예를들어, main 함수는 입력 파라메타와 출력 파라메타가 모두 없습니다. 호출되면 수행할 작업만 있습니다. print 함수는 입력 파라메타는 있지만 출력 파라메타는 없습니다. 여기서 수학의 경우는 숫자로된 결과를 출력 파라메타로 받기 위하여 함수를 호출하지만, 컴퓨터 프로그램의 경우는 정해진 작업만 마치면 되고, 굳이 결과값이 만들어질 필요가 없는 경우가 있습니다. 따라서 컴퓨터 프로그램에서는 입력 파라메타와 출력 파라메타가 '있다/없다'의 유무로 인한 4가지 조합이 가능한 점이 일단 수학의 함수와 다릅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Sample Function</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>간단하게 두 개의 숫자를 입력 파라메타로 받아서, 이 들의 합(sum)을 계산한 후, 계산한 결과 값을 돌려주는(return) 하는 함수를 만들어 보겠습니다. 함수의 이름은 calcSum()으로 하도록 하겠습니다.  이를 Dart 언어로 작성하면 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">calcSum(var num1, var num2) {
  return num1 + num2;
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>새로운 문법으로 return 구문이 나타났습니다. 이 구문은 계산한 결과를 함수를 호출한 곳으로 돌려주기위한 용도로 사용합니다. 즉,  <em>y = f(x)</em>의 경우를 생각해 보면, <em>x</em>를 받은 함수 <em>f</em>가 정해진 계산을 하고 나면, 그 결과가 <em>y</em>로 이동을 해야 합니다. 수학에서는 계산후 결과를 종이에서 <em>y = ... </em>이라고 쓰면 되지만, 컴퓨터 프로그램에서는 <em>f(x)</em>의 결과가 컴퓨터 내부의 장치를 통해서 <em>y</em>라는 공간(컴퓨터 메모리)로 이동해야 합니다. 이런 기능을 수행하는 문법이 return 입니다. calcSum 함수 내부의 문법을 기술적으로 설명하면 다음과 같습니다. 먼저 num1과 num2의 값을 더합니다. 그렇게 구해진 결과를 컴퓨터 메모리를 통해서 calcSum을 호출한 지점으로 return 구문을 통해서 돌려줍니다. 그러면 이 함수를 실제 활용하는 예제 프로그램 darttutorial-12-01.dart을 통해서 이해해 보도록 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-12-01.dart

calcSum(var num1, var num2) {
  var sum = num1 + num2; // 3
  print("[calcSum()] $num1 + $num2 is $sum"); // 4
  return sum; // 5
}

void main() {
  print("[main()] start"); // 1
  var resNum = calcSum(5, 5); // 2, 6
  print("[main()] result is $resNum"); // 7
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>darttutorial-12-01.dart 프로그램이 수행되면, main() 안에서 바로 calcSum 함수를 호출하면서 입력 파라메타로 5와 5를 전달하는 것을 볼수 있습니다. main() 안에서 calSum 함수를 호출하면, 프로그램의 수행은 calcSum 함수로 이동합니다. calSum으로 이동후, 첫번째 파라메타인 5와 두번째 파라메타 5를 더한 값 10을 sum에 저장한 후, 이 값을 return 구문을 통해서 calcSum으로 돌려줍니다. 쉽게 이야기 하면, calcSum을 호출한 지점이 10이라는 숫자로 바뀐다고 보면 됩니다. 이해를 돕기 위해서, 각 문장의 뒤에, 해당 문장이 수행하는 순서를 숫자로 적어 두었습니다. 그리고 프로그램의 수행 결과를 다음에 적어 두었으니 참조하기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[main()] start
[calcSum()] 5 + 5 is 10
[main()] result is 10
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Shorthand Syntax Function</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>darttutorial-12-01.dart의 calcSum 함수처럼 1줄 정도의 작업만 하면 되는 간단한 함수들이 있습니다. 이 경우는 Dart 언어의 shorthand syntax를 사용하여 보다 간단하고 편리하게 나타낼 수 있습니다. 이를 위해서 darttutorial-12-01.dart을 단순한 형태로 바꾼 darttutorial-12-02.dart를 참조하시기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-12-02.dart

calcSum(var num1, var num2) {
  return num1 + num2;
}

void main() {
  print("[main()] start");
  var resNum = calcSum(5, 5);
  print("[main()] result is $resNum");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-12-02.dart

calcSum(var num1, var num2) {
  return num1 + num2;
}

void main() {
  print("[main()] start");
  var resNum = calcSum(5, 5);
  print("[main()] result is $resNum");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>calcSum이 한줄로만 이루어진 단순한 함수 이기에 shorthand syntax로 변환할 예정으로, 문법은 =&gt;의 화살표입니다. 예제를 먼저 보고 이해를 하도록 합니다. 다음의 darttutorial-12-02.dart는 calcSum 함수를 shorthand syntax로 변경한 형태입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-12-03.dart

calcSum(var num1, var num2) =&gt; num1 + num2;

void main() {
  print("[main()] start");
  var resNum = calcSum(5, 5);
  print("[main()] result is $resNum");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>함수의 이름과 입출력 부분은 동일 하지만, 이를 수행할 함수의 몸체는 매우 단순해 졌는데, 먼저 해당 함수가 호출되면 수행할 내용을 단순하게 =&gt;의 오른쪽에 한줄로만 작성하면 됩니다. 위의 예제를 좀 더 자세하게 설명하면, calcSum() 함수는 shorthand 함수로서, 입력 파라메타 두개를 받으면, 이둘을 더한 값을 "return" 한다고 보면 됩니다. 즉, calcSum() 함수는 "return num1 + num2"라는 의미로 해석합니다. 프로그램의 수행결과는 앞서의 함수의 경우와 다르지 않습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Anonymous Function</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Anonymous 라는 단어는 프로그램 개발에서 자주 등장 하는 단어입니다. 여러 곳에서 등장 하는데, anonymous function이라고 하면, 함수이기는 한데, 이름이 없다는 의미입니다. 이름이 없다는 것은, 굳이 이름까지 붙일 정도의 함수는 아니다 라고 보면 됩니다. 이런 함수는 프로그램 전체적인 측면에서 사용하는 것이 아니고, 일부의 지역 혹은 호출 하는 지점에서만 함수가 의미를 갖는 다는 정도로 이해하면 됩니다. 그러면 다시 앞서의 darttutorial-12-03.dart을 다시 한번 수정하여 anonymous function을 적용해 보겠습니다. 수정한 내용이 darttutorial-12-04.dart로 아래와 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-12-04.dart

void main() {
  var myFunc = (var num1, var num2) =&gt; num1 + num2;
  
  print("[main()] start");
  var resNum = myFunc(5, 5);
  print("[main()] result is $resNum");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>먼저 (var num1, var num2) =&gt; num1 + num2;를 보면, 함수의 이름이 없으며 입력은 두개이고, 이를 받으면 둘을 더한 값을 return 하는 함수를 표현합니다. 이를 "var myFunc ="로 한것은, 이 함수를 그대로 변수 myFunc에 넣었다는 것입니다. 변수에 함수를 넣는다는 것이 생소할 수 있지만, 객체지향 프로그래밍 언어들에서 변수에는 데이타 외에 함수도 저장이 가능합니다. 따라서, "함수의 이름은 없지만, 이제 부턴 이 함수는 myFunc라고 부르겠어" 정도의 의미로 이해하면 되겠습니다. 이렇게 myFunc로 부르기로 한 함수의 호출은 일반 함수의 호출과 같은 방법으로 호출하면 됩니다. 따라서 var resNum = myFunc(5, 5);에서 나타나듯이, 두개의 5를 입력 파라메타로 받아, 이름 없는 함수를 통해 더 한후, 그 결과인 10을 return 받아서 resNum 변수에 넣는 동작을 의미합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Optional, Default and Named Parameters</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>함수의 입력 파라메타를 전달하는 방법에는 몇가지 추가적인 기능들이 있습니다. 이들의 차이점을 한번에 비교해 가면서 이해할 수 있도록 darttutorial-12-05.dart 프로그램안에 설명하고자 하는 모든 가짓수를 포함하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-12-05.dart

// Case.1 Positional parameters
int calcFraction1(var denominator, var nominator) {
  return denominator ~/ nominator;
}

// Case.2 Positional and optional parameters
int calcFraction2(var denominator, [var nominator]) {
  if(nominator == null){
    nominator = 1;
  }
  return denominator ~/ nominator;
}

// Case.3 Positional, optional and default parameters
int calcFraction3(var denominator, [var nominator = 1]) {
  return denominator ~/ nominator;
}

// Case.4 Named parameters (all parameters are optional)
int calcFraction4({var denominator, var nominator}) {
  return denominator ~/ nominator;
}

// Case.5 Named parameters with initial value checking
int calcFraction5({var denominator, var nominator}) {
  if(nominator == null){
    nominator = 1;
  }
  return denominator ~/ nominator;
}

// Case.6 Named parameters with default parameters
int calcFraction6({var denominator, var nominator = 1}) {
  return denominator ~/ nominator;
}

void main() {
  var result1 = calcFraction1(1, 1);
  var result2 = calcFraction2(2);
  var result3 = calcFraction3(3);

  // print 1 2 3
  print("$result1 $result2 $result3");

  var result4 = calcFraction4(denominator: 4, nominator: 1);
  var result5 = calcFraction4(nominator: 1, denominator: 4);
  var result6 = calcFraction5(denominator: 5);
  var result7 = calcFraction6(denominator: 6);

  // print 4 4 5 6
  print("$result4 $result5 $result6 $result7");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p><em>Positional Parameters</em> 먼저 무심결에 사용하고 있지만, 이름을 언급하지 않은 방법입니다. 즉, 함수의 입력 파라메타 들에 대해서, 타입과 이름을 단순히 나열하는 형태입니다. darttutorial-12-05.dart의 Case.1에 해당하는 부분입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Optional Parameters in Positional Parameters</em> Case.1에서 설명한 방법의 진보된 방법입니다. 먼저 calcFraction<em>N </em>함수들의 기능은 모두 같은데, 단순하게 분모와 분자를 입력 차라메타로 전달받으면 분자로 분모를 나눈 몫을 정수 형태로 retuen 합니다. Case.1에서는 반드시 두개의 입력 파라메타인 분모와 분자를 입력 파라메타로 받아야 합니다. Case.2에서는 함수 입력 파라메타 중 var nominator를 [ ... ] 괄호로 묶었는데, 이 의미는 두번째 파라메타를 받을수도 있고, 안받아도 동작하는 optional 파라메타로 처리하겠다는 의미입니다. 따라서, main 함수의 호출부분을 보면 분모만 2를 전달하고, 분자는 없습니다. 이런 경우, optional 입력 파라메타가 주어졌는지 아닌지를 판단하기 위해서는, 예제처럼 null 값과의 비교를 수행한 후, 맞춰서 작업을 하도록 하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Optional &amp; Default Parameters in Positional Parameters</em> Case.2에서는 두번째 입력 파라메타를 optinal하게 해서, 만약 null 이라면 분자를 1로 바꾸는 작업을 했습니다. 이렇게 함으로써, 분자가 null 상태로 나누기를 해서 에러가 발생하는 것을 방지한 것 입니다. 이렇게 프로그램을 작성할때, optional한 입력 파라메타를 받지만, 만약 주어지지 않았을때 어떤 특정 값으로 설정을 해주는 값이 있다면, Case.3 처럼 optional 파라메타에 "= N" 처럼 합니다. 즉, 해당 파라메타가 optional 한데, 주어지지 않으면 N으로 초기화 하겠다는 겁니다. 따라서, calcFraction3 함수의 실행 부분에서 분모만 3으로 주었지만, 자동으로 분자를 1로 설정했기에, return 값이 3으로 나옵니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Named Parameters </em>함수에 따라서, 모든 함수의 입력 파라메타가 optional 한 경우가 있습니다. 이런 경우는 named parameter 방법을 사용하는데, 문법은 간단 합니다. 입력 파라메타 들을  { ... } 기호로 묶으면 되며, 예제의 Case.4에 해당합니다. 이런 경우에, 함수 호출 방법이 바뀝니다. main에서 calcFraction4 함수 호출 부분을 보면, "입력 파라메타의 이름 : 전달하고자 하는 값"의 형태로 되어 있는 것을 볼수 있습니다. Named parameter 방식을 사용하면, calcFraction4를 호출하는 두가지 방법에서 처럼, 파라메타의 순서는 의미가 없습니다. Named parameter는 모든 입력 파라메타가 optional 하므로, 해당 파라메타가 주어지지 않은 경우를 점검해서 특별한 동작을 해야 한다면, Case.5 처럼 파라메타의 null 여부를 판단하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Default Parameters in Named Parameters </em>Named parameter 방식에서 default 값을 주고 싶다면, 앞서의 calcFraction3와 유사하게, default 값을 주고자 하는 입력 파라메타 뒤에 "= N" 처럼 하여 초기화 값을 지정하면 됩니다. 단, [ ... ]의 기호는 필요가 없습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Local Variable Scope</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>앞서 반복 구문을 배우는 내용에서, 반복문 안에서 만든 변수는 반복문 밖에서 사용할 수 없는 것을 배웠습니다. 유사하게 함수안에서 만들어진 변수는 함수밖에서는 사용할 수가 없습니다. 이를 darttutorial-12-06.dart 프로그램에서 확인할 수 있습니다. 마지막 print 구문은 프로그램 실행시 에러가 납니다. localSum을 함수 밖에서 접근하는 경우는 해당 변수가 없는 것을 Dart 언어가 인지하고, 없는 변수에 대한 접근으로 인식하여 에러가 납니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-12-06.dart

int calcSum(int num1, int num2) {
  var localSum = num1 + num2;
  return localSum;
}

void main() {
  var resNum = calcSum(1,1);
  print("$resNum");
  print("$localSum"); // Error
}
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>수학의 함수와 유사한 프로그래밍 언어의 함수에 대해서 배웠습니다. 수학과의 차이점으로는 수학의 함수는 반드시 입력과 출력이 있지만, 프로그램에서는 둘중 하나가 없거나 둘다 없는 경우들도 일반적입니다. 그리고 Dart는 함수를 줄여서 나타내는 shorthand와 anonymous 기능이 있었습니다. 또한, 입력 파라메타를 나타내는 방식으로 positional과 named 방식이 있었습니다. 또한 입력 파라메타가 선택으로 없어도 되는 optional 모드가 있었고, 주어지지 않은 입력 파라메타에 초기화 값을 지정하는 defaul 방식도 있음을 확인 하였습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
