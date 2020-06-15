# Dart 기초문법 - Useful Dart Features

<!-- wp:paragraph -->
<p>이 글에서는 지금까지 설명했던 주요 Dart 언어의 특징 들에 추가해서, 알아두면 요긴하게 사용할 수 있거나, 아니면 타인이 만든 프로그램에서 사용된 내용을 이해하기 위한 용도로 몇가지 문법들을 설명하도록 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Conditional Expression</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>if 구문을 사용하지 않고, 매우 간단하지만 조건적인 동작을 수행하는 문법으로 형태는 다음과 같이 합니다. condition이 true 이면 expr1이 수행되고, false 이면 expr2가 실행 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>condition ? expr1 : expr 2
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Bitwise Operators</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Bitwise 연산자는 데이타를 비트(bit) 단위로 다루는 연산자를 의미합니다. 비트는 0과 1만 나타낼 수 있는 컴퓨터 프로그램에서 다룰수 있는 최소 단위입니다. 8개의 비트가 모이면 우리는 바이트(byte)라고 부릅니다. 컴퓨터 메모리를 대문자 B로 부르는 이유는 Byte 단위로 컴퓨터 메모리를 카운팅 하기 때문입니다. 예를 들어 1바이트로 정수 3을 부호 없는 1바이트 정수로 나타내면 00000110으로 나타납니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bitwise right-shift 연산자는 "N &gt;&gt; M"으로 표현나며, N의 값을 비트 단위로 바뀐후, M 비트 만큼 오른쪽으로 이동시킨다는 의미입니다. 즉 "3 &gt;&gt; 1"이라고 하면, 10진법의 3에 해당하는 정수를 8비트 형태인 00000011으로 표현한 후, 오른쪽으로 일괄 한자리씩 이동 합니다. 그렇게 되면 00000001이 됩니다. 이를 다시 10전법의 정수로 바꾸면 1이 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bitwise left-shift 연산자는 "N &lt;&lt; M"으로 표현하며, bitwise right-shift 연산자와 모든 부분은 같으며, 오른쪽이 아닌 왼쪽으로 이동하는 점만 다릅니다. 즉 "3 &lt;&lt; 1"이라고 하면, 10진법의 3에 해당하는 정수를 8비트 형태인 00000011으로 표현한 후, 왼쪽으로 일괄 한자리씩 이동 합니다. 그렇게 되면 00000110이 됩니다. 이를 다시 10전법의 정수로 바꾸면 6이 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bitwise OR 연산자는 "N | M"으로 표현합니다. OR 연산자의 의미는 앞서 배웠던 기본 연산자와 동일합니다. 둘 중 하나면 true여도 결과가 true가 되는 의미입니다. 단 bitwise 연산자가 되면, 앞서의 bitwise shift 연산자 처럼, 0과 1의 이진법으로 펼친후, 각각의 자리에 있는 비트 값을 확인해서, 같은 자리의 비트 값 중 1이 하나라도 있으면, 결과로 1로 처리합니다. 따라서, "3 | 4"로 하면, "00000011 | 00000100"이 되고, 결과를 "00000111"이 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Bitwise AND 연산자는 "N &amp; M"으로 표현합니다. AND 연산자의 의미는 앞서 배웠던 기본 연산자와 동일합니다. 둘 모두 true여야 결과가 true가 되는 의미입니다. 단 bitwise 연산자가 되면, 앞서의 bitwise shift 연산자 처럼, 0과 1의 이진법으로 펼친후, 각각의 자리에 있는 비트 값을 확인해서, 같은 자리의 비트 값에 모두 1이 있으면, 결과로 1로 처리합니다. 따라서, "3 &amp; 4"로 하면, "00000011 &amp; 00000100"이 되고, 결과를 "00000000"이 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>NaN &amp; Infinity Constant</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어에는 몇가지 상수가 존재합니다. NaN은 Not-a-Number의 약자로써 숫자가 아니다 라는 의미입니다. 예를 들어, 0을 0으로 나눈다는 것과 같이 의미가 없는 경우를 나타냅니다. 따라서, 이런 경우를 대비해서 int와 double 데이타 타입은 객체가 가지고 있는 값이 유의미한지 아닌지를 검사하는 isNan이라는 property를 지원하며, 유의미한 값이 false를 의미가 있는 값이면 false를 return 합니다. 유사하게 1을 0으로 나누는 경우는 수학에서 분모가 0에 가까와 지는 것을 의미해서, 무한대를 나타내는 Infinity를 출력합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Unicode Presentation (Runes)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart는 소스코드 및 각종 문자들을 UTF(Unicode Transformation Format)-16 코딩 방식으로 표현 합니다. 코딩이란 사람이 볼 수 있는 기호들을 컴퓨터가 처리하기 용이한 숫자들로 매핑한 것 입니다. 유명한 코딩은 ASCII(American Standard Code for Information Interchange)가 있으며, 미국에서 영어와 숫자, 그리고 기호를 256개의 코드에 넣은 것 입니다. 영어권 국가가 아닌 한국과 같은 경우는 추가적인 비트수로 이루어진 코드가 필요했고, 그 중 하나가 Unicode 입니다. Dart의 UTF-16과 Unicode 간의 차이로, Dart에서는 Unicode를 표현하기 위해서는 문자열 앞에 \u 기호를 추가해야 합니다. 통상 16비트의 Unicode를 표현하기 위해서는 \u2665 (하트 기호 입니다) 처럼 합니다. 이보다 큰 비트 수의 Unicode를 표현하기 위해서는 \u{1f600} 처럼 { ... } (스마일 기호 입니다) 기호로 코드 값을 감싸 줍니다. Unicode와 같은 서로 다른 타입의 문자열 처리는 이후 library에서 설명할 characters 패키지를 사용하면 좀 더 복잡하고 유용한 기술을 사용할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Cascade Operator </h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>클래스의 메소드를 수행할 때, 앞의 결과를 뒤에서 이어 받아 실행하는 경우가 있습니다. 예를들어 A.method1().method2()와 같이 할 수 있습니다. 이는 A 객체의 멤버 메소드인 method1을 실행하고, 이의 결과가 다시 새로운 객체가 되어, 이 새로운 객체의 멤버 메소드인 method2를 실행 하라는 의미 입니다. 예를 들어 method1의 결과가 정수라면, 정수 객체의 method2를 실행 한다는 의미 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이와 다르게, A의 method1을 실행하고, 이어서 다시 A의 method2를 실행하고 싶을때가 있습니다. 이런 경우를 위한 Dart 문법이 있으니, ".." 입니다. 예를들어 List&lt;String&gt; 타입의 비어있는 myList2가 있다고 가정합니다. 첫번째 하고 싶은 동작은 add("Go")로 element를 하나 추가하고, 다음으로 addAll(["C++", "Dart", "Python"])를 통해서 3개의 element가 들어간 List를 입력 파라메타로 주어서, 이안의 3개 element를 다시 List에 추가합니다. 마지막으로 이 List를 Sort하고 싶습니다. 각각을 별도의 문장으로 작성할 수도 있지만, Dart는 위의 작업을 ".." 연산자를 사용하여 다음처럼 프로그래밍 하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>  myList2
  ..add("Go")
  ..addAll(["C++", "Dart", "Python"])
  ..sort((a,b) =&gt; a.compareTo(b));
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>사실 cascade 연산자라고 말은 했지만, ".." 문법은 Dart 고유의 문법 중 하나입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>forEach Function</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>forEach 함수는 List, Set 등과 같이 복수의 데이타를 저장하는 데이타 타입에 활용 가능한 멤버 메소드 입니다. 따라서, 적용 하고자 데이타 타입의 멤버 메소드로 제공이 되는지 확인을 해야 합니다. 지원하는 기능은, 이름이 의미 하듯이, 반복적으로 데이타 타입 안의 첫번째 부터 마지막 element에 입력 파라메타로 전달받는 함수를 적용하는 것 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>예들 들어 위의 myList2는 최종적으로 ["C++", "Dart", "Go", "Python"] 값을 저장하는 리스트 입니다. 여기에 다음과 같은 함수를 적용해 보겠습니다. 아래의 printItem 함수는 간단합니다. 입력 파라메타로 문자열 하나를 받아서 화면에 출력합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>void printItem(String item) {
  print(item);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 myList2에 printItem 함수를 적용하면, myList2.forEach(printItem); 처럼 하면 됩니다. 이러면, myList2의 각 element를 printItem 함수의 입력 파라메타로 전달하는 작업을 첫번째 element 부터 마지막 element 까지 수행합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>forEach 함수는 Function 설명에서 언급한 anonymous function을 적용하는 대표적인 사례 중 하나입니다. 따라서 printItem 함수와 forEach 함수를 anonymous function 형태로 구현하면 다음과 같이 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>myList2.forEach((item) =&gt; print(item));
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Nested Function</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어는 특이하게 함수 안에서 함수를 만들수 있는 언어입니다. 많이 사용하지는 않겠지만, 그럴수가 있다는 점을 기억해 두도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Default Return Value (null)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>아래와 같이 아무런 return 값이 없는 함수가 있다면, Dart 언어는 자동으로 "return null;" 구문을 함수의 끝 부분에 추가합니다. 따라서, return 값이 없는 함수는 null을 return 한다고 보아도 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>doNothing() {}
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>Operator Precedence</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어의 연산자 들은 수학의 연산자 들과 유사하게 우선순위가 있습니다. 먼저 수학에서의 +, - 연산 순위가 같으면, 오른쪽에서 왼쪽으로 하는 것은 수학과 같습니다. +, - 연산자가 *, / 연산자 보다 낮은 것도 동일합니다. 수학과 다르게 다양한 연산자 들이 많이 나타나는 만큼 공식 사이트의 연산자 우선순위 정보를 한번 살펴 보는 것이 좋겠습니다 [<a href="https://dart.dev/guides/language/language-tour#operators">참조</a>].</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Assignment Operators</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>a = a + 1; 처럼 프로그램을 개발하다 보면 특정 변수의 값을 업데이트 하는 경우가 많습니다. 이때 a += 1;로 하면 동일한 효과를 볼 수 있습니다. 이렇게 간단하게 만드는 연산자는 -=, /=, %=, &gt;&gt;=, ^=, *=, ~/=, &lt;&lt;=, &amp;=, |=가 있습니다. 또한 a ??= 1 처럼 하면, ??= 연산자는 a가 null 인 경우에 대해서만 1을 a에 저장하며, 그렇지 않으면 아무런 작업을 하지 않습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Not Operators</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>만약 true 값을 저장한 변수 a가 있을때, !a로 하면 false가 됩니다. 즉 ! 연산자는 not의 의미를 가집니다. 변수 차원이 아닌 비트 차원에 대해서 이런 작업을 원한다면, ~ 연산자가 있습니다. 데이타를 비트로 펼친후 0을 1로, 1을 0으로 바꾸는 bitwise 연산자 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Example Program</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>앞서 설명한 사항들을 하나 하나 간단한 예제로 풀어낸 프로그램이 아래의 darttutorial-18-01.dart  입니다. 위의 내용을 이해하고, 먼저 결과를 예측해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-18-01.dart 

// #6 forEach function
void printItem(String item) {
  print("#6 I \u2665 " +  item + "!");
}

void main() {
  // #1 Conditional Expression
  var myCondition1 = true;
  var myCondition2 = myCondition1 ? false : true;
  print("#1 $myCondition1 $myCondition2");

  // #2 Bitwise Operators
  var myNum1 = 3 << 1; // 00000011 << 1       == 00000110
  var myNum2 = 3 >> 1; // 00000011 >> 1       == 00000001
  var myNum3 = 3 | 4;  // 00000011 | 00000100 == 00000111
  var myNum4 = 3 & 4;  // 00000011 & 00000100 == 00000000
  print("#2 $myNum1 $myNum2 $myNum3 $myNum4");

  // #3 NaN Constant
  var myNaN = 0 / 0;
  var myInfinity = 1 / 0;
  print("#3 $myNaN $myInfinity");

  // #4 Unicode presentation
  var myUnicode1 = '\u2665'; // 4-digit hexadecimal
  var myUnicode2 = '\u{1f600}'; // more or less than 4-digit
  print("#4 $myUnicode1 $myUnicode2");

  // #5 Cascade (..) operator
  List<String> myList2 = [];
  myList2
  ..add("Go")
  ..addAll(["C++", "Dart", "Python"])
  ..sort((a,b) => a.compareTo(b));
  print("#5 $myList2");

  // #6 forEach function - 1
  myList2.forEach(printItem);

  // #7 forEach function - 2
  myList2.forEach((item) => print("#7 I \u2665 " +  item + "!"));

  // #8 forEach function
  void printItemNested(String item) {
    print("#8 I \u2665 " +  item + "!");
  }
  myList2.forEach(printItemNested);

  // #9 Not operators
  var myBool1 = true;
  var myBool2 = 0;
  print("#9 ${!myBool1} ${~myBool2}");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>위의 darttutorial-18-01.dart  프로그램의 수행 결과를 다음과 같이 표시하였습니다. 본인이 생각한 결과와 동일한지 이해해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>#1 true false
#2 6 1 7 0
#3 NaN Infinity
#4 ♥ 😀
#5 [C++, Dart, Go, Python]
#6 I ♥ C++!
#6 I ♥ Dart!
#6 I ♥ Go!
#6 I ♥ Python!
#7 I ♥ C++!
#7 I ♥ Dart!
#7 I ♥ Go!
#7 I ♥ Python!
#8 I ♥ C++!
#8 I ♥ Dart!
#8 I ♥ Go!
#8 I ♥ Python!
#9 false -1
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어의 기본 문법을 알아오면서, 유용하지만 상대적으로 비중이 적었던 내용들을 모아서, 이번 글에서 설명을 하였습니다. 개발하는 프로그램에 따라서 사용 안할수도 있는 문법들 이지만, 알아두면 유용한 문법들이니 빠트리지 않고 이해 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":139,"height":50} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="139" height="50"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
