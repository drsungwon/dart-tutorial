# Dart 기초문법 - Repetition (Loop) &gt;</h4>

<!-- wp:paragraph -->
<p>반복문(repetition, loop)는 같은 동작을 반복적으로 수행하는 문법을 의미합니다. Dart에서는 for, while, do-while의 세가지 반복문 문법을 제공합니다. 지금까지는 반복문을 사용하는 예제를 보이지 않았지만, 구구단을 계산하거나 대량의 데이타를 다루는 List, Set, Map 등의 문법을 익히면 반드시 반복 구문을 사용할 수 밖엔 없으니 잘 이해 바랍니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>For Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>For 반복문의 문법은 "for ( 초기값 설정 ; 조건 검사 ; 초기값 업데이트 ) { ... }" 형태입니다. 간단한 예제를 보는 것이 더 빠른 이해를 돕는 방법이기에, darttutorial-11-01.dart를 통해서 자세한 설명을 하도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-01.dart

void main() {
  var sum = 0;
  for(var num = 1; num &lt;= 10; num++) {
    sum = sum + num;
    print("sum is $sum and num is $num.");
  }
  print("Finally, sum is $sum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>darttutorial-11-01.dart안의 for 문을 보면 초기값 설정 부분에 var num = 1;로 되어 있습니다. 이 부분은 for 구문을 들어가는 처음에 한번 수행됩니다. 그리고 중간의 조건 검사는 for 구문을 통한 반복을 수행할 것인지, 아니면 반복을 중간할 것인지를 검사하는 구문입니다. 여기에서 true 값이 나오면 for 구문의 { ... }로 진입을 하지만, false가 나오면 { ... }로 진입하지 않고, for 구문의 다음 문장으로 바로 이동합니다. 마지막으로 마지막의 num++는 { .. } 안의 작업을 마친후 수행하는 문장으로, 이 프로그램에서는 sum = sum + num;을 수행한 후 num 값을 1 증가시킨다는 의미입니다. 이해가 안되는 부분은 아래의 수행 결과를 보면서 차분하게 생각해 보도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">sum is 1 and num is 1.
sum is 3 and num is 2.
sum is 6 and num is 3.
sum is 10 and num is 4.
sum is 15 and num is 5.
sum is 21 and num is 6.
sum is 28 and num is 7.
sum is 36 and num is 8.
sum is 45 and num is 9.
sum is 55 and num is 10.
Finally, sum is 55.</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>반복문 안에 반복문을 넣는 동작이 필요할 수 있습니다. 예를 들어 구구단을 계산한다면, N *  M의 결과를 계산해야 합니다. 이 경우 N이 1~9까지 증가하면서 M도 1~9까지 증가하는 반복 구문의 반복이 필요하게 됩니다. 이렇게 구구단을 계산하는 프로그램을 darttutorial-11-02.dart에서 확인할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-02.dart

void main() {
  var temp = 0;

  for(var num1 = 1; num1 &lt;= 9; num1++) {
    for(var num2 = 1; num2 &lt;= 9; num2++) {
      temp = num1 * num2;
      print("$num1 * $num2 = $temp");
    }
  }
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>수행결과는 익히 알고 있는 구구단의 결과를 보여줍니다. darttutorial-11-01.dart 프로그램 처럼 반복구문 안에 반복구문을 넣는 것은 가능하며, 이를 nested-for 혹은 nested-loop 라고 부릅니다. 아래는 수행결과의 처음과 끝부분만 부분적으로 표시하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">1 * 1 = 1
1 * 2 = 2
1 * 3 = 3
...
9 * 7 = 63
9 * 8 = 72
9 * 9 = 81</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>반복구문을 사용할때 한가지 주의사항이 있습니다. 반복구문 안에서 만든 데이타는 반복구문 밖에서는 사용할 수 가 없습니다. 반대로 반복구문 밖에서 만든 데이타는 반복구문 안에서 사용이 가능합니다. 이를 간단한 예제인 darttutorial-11-03.dart을 통해서 이해해 봅니다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-03.dart

void main() {
  var oNum = 1;
  for(var iNum=1; iNum &lt;3; iNum++){
    print("[OUT] oNum is $oNum and iNum is $iNum.");
  }
  print("[IN ] oNum is $oNum and iNum is $iNum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>darttutorial-11-03.dart를 MSVC에서 타이핑하면, 이미 for 구문의 밖에 있는 두번째 print 구문안의 $iNum 밑에 붉은 색 라인이 나타나며, 마우스를 그 위에 올리는 순간 iNum이 undefined 되어 있다고 나옵니다. 변수들은 유효한 범위가 있는데, 반복구문안에서 만들어진 변수들은 반복구문 밖에서는 의미가 없기에, Dart 언어가 못찾겠다고 나오는 겁니다. 하지만 반복구문 밖에서 만든 oNum의 경우는 for 구문의 위, 속, 밖에 있어도 문제없이 쓸수 있는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>While Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>while 반복문의 문법은 "while (조건 검사) { ... }" 형태의 단순한 구조입니다. 조건 검사 구문이 true 이면 { ... }의 작업을 수행한다는 의미입니다. 반복 구문의 문법이 세가지 이지만, 어떤 문법을 사용하든, 유사한 효과를 만들 수 있습니다. 아래는 darttutorial-11-01.dart을 while 구문을 사용해서 변경한 darttutorial-11-04.dart 프로그램으로 동작은 동일합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-04.dart

void main() {
  var sum = 0;
  var num = 1; 
  while(num &lt;= 10) {
    sum = sum + num;
    print("sum is $sum and num is $num.");
    num++;
  }
  print("Finally, sum is $sum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>개발자들에게 선호하는 반복구문을 물어보면, 가장 많은 개발자들이 for 구문을 선택합니다. 이유를 위에서 살펴보면, for 구문의 경우는 반복을 해야 하는 3가지 조건이 for 구문의 첫줄에 명확하게 명시가 되므로 실수할 가능성이 낮은데 반하여, while 구문은 while 문장의 위 혹은 안에 추가적인 작업을 해야 한다는 의미로서, 깜빡하고 잊는 경우가 발생하면, 반복구문이 오동작할 확률이 증가하는 요인입니다. 하지만, 반복구문은 어떤 구문을 사용하든 거의 동일한 작업을 할 수 있으므로, 어떤 구문을 사용하든 큰 문제는 없습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Do-While Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Do-While 문법은 do { ... } while(조건 검사); 형태로 작성합니다. Do-While은 앞서의 for, while 구문과 한가지 차이점이 있습니다. 반드시 한번은 { ... }을 수행한다는 점입니다. for, while의 경우는 조건에 부합하지 않으면, { ... }을 한번도 수행하지 않을 수 있습니다. 아래는 darttutorial-11-01.dart을 while 구문을 사용해서 변경한 darttutorial-11-05.dart 프로그램으로 동작은 동일합니다. 한가지 명심할 부분은 do-while 구문의 경우는 while (...) 구문 뒤에 반드시 semi-colon을 적어야 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-05.dart

void main() {
  var sum = 0;
  var num = 1; 
  do {
    sum = sum + num;
    print("sum is $sum and num is $num.");
    num++;
  } while(num &lt;= 10);
  print("Finally, sum is $sum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Break &amp; Continue Statement in Repetition</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>반복 구문안에서 break와 continue 구문을 사용하면, 반복의 흐름을 조정하는데 사용합니다. 먼저 continue 구문을 사용하여 darttutorial-11-01.dart을 수정한 다음의 darttutorial-11-06.dart를 이해해 봅시다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-06.dart

void main() {
  var sum = 0;
  for(var num = 1; num &lt;= 10; num++) {
    if(num % 2 == 0){
      sum = sum + num;
    } else {
      continue;
    } 
    print("sum is $sum and num is $num.");
  }
  print("Finally, sum is $sum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>for 구문 안을 보면, if-else의 조건 구문이 있는 것을 볼 수 있습니다. if 구문의 경우는 num을 2로 나눠서 정수 나머지가 0인 경우, 즉 짝수인 경우에만 sum의 값에 num을 추가해서 업데이트 하는 내용으로 기존의 학습 내용을 통해서 이해 가능합니다. else 구문 안을 보면, 딱 한줄인 continue;만 있는데, 이렇게 반복 구문 안에 continue가 있으면, 현재 수행중인 지점 아래의 내용을 수행하지 않고(skip하고), 반복을 바로 이어 가도록 합니다. darttutorial-11-06.dart의 경우는, for 구문의 num++를 수행하도록 하고, 이어서 num &lt; 10의 조건 검사로 넘어가는 것 입니다. 다음의 수행 결과를 통해서 자세하게 이해하기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">sum is 2 and num is 2.
sum is 6 and num is 4.
sum is 12 and num is 6.
sum is 20 and num is 8.
sum is 30 and num is 10.
Finally, sum is 30.</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>반복문 안에 break 구문이 있으면, 현재 수행중인 반복구문을 중단합니다. 그렇게 되면, 프로그램의 흐름은 반복구문 바로 뒤의 작업으로 넘어갑니다. darttutorial-11-06.dart 프로그램을 수정해서, 반복작업을 하다가 sum의 값이 20과 같거나 크면 반복구문을 중단하도록 수정해 봅니다. 이렇게 수정한 darttutorial-11-07.dart을 이해해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-11-07.dart

void main() {
  var sum = 0;
  for(var num = 1; num &lt;= 10; num++) {
    if(num % 2 == 0){
      sum = sum + num;
    } else {
      continue;
    } 
    print("sum is $sum and num is $num.");

    if(sum &gt;= 20) {
      break;
    }
  }
  print("Finally, sum is $sum.");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>수행결과는 일부 바뀌어서 sum의 값이 20이 된 순간 종료하게 되며, 이의 수행 결과가 아래와 같습니다. 이렇게 반복구문 안에서의 프로그램의 흐름은 조건문을 사용하거나, break 및 continue 구문을 사용하여 제어할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">sum is 2 and num is 2.
sum is 6 and num is 4.
sum is 12 and num is 6.
sum is 20 and num is 8.
Finally, sum is 20.</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>컴퓨터 프로그램을 작성하는 이유 중 하나가 반복되는 작업을 사람보다 빠르게 진행하는 용도입니다. 이를 위하여 Dart 언어는 for, while, do-while 구문을 제공합니다. 어느 문법을 사용하든 대부분의 경우 동일한 결과를 얻을 수 있습니다. 반복구문 안에서 프로그램의 흐름의 바꾸기 위한 용도로 break와 continue가 있으며, break는 반복을 중단하는 용도로 사용하고, continue는 일부 작업을 skip 하고 반복을 재개하는 역할로 사용합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":135,"height":48} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="135" height="48"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
