# Dart 기초문법 - Variables &amp; Constants

<!-- wp:paragraph -->
<p>최초의 전자식 디지털 컴퓨터는 Compute/r가 의미 하듯이 계산을 하는 것이 주목적 입니다. 따라서, "X = 1, Y = 2, Z = X + 1"과 같이 산수/수학을 지원하는 것을 기초로 합니다. 그리고 우리는 이미 X, Y, Z를 변수라고 하는데, 이는 변하는 값이라는 의미입니다. 상수는 수학의 원주율인 pi 처럼 3.141592...의 값이 이미 고정되어서, 변경되지 않는 것으로 이미 알고 있습니다. 모든 프로그래밍 언어는 이러한 기능을 그대로 변수(variables)와 상수(constants)라 부릅니다. Dart에서 어떻게 사용하는지 알아봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>변수 (Variables)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>바로 코드로 시작해 봅니다. Be.Programmer [6] 글을 통해서 알게된 작업용 폴더 만들기 후, 다음 darttutorial-07-01.dart의 소스 프로그램을 타이핑 하고, 실행합니다. 반드시 1) 폴더를 만들고, 2) 폴더에 dart 화일을 저장하고, 3) main()이 있는 dart 화일명이 제대로 launch.json 화일의 program 필드에 적혀 있는지 확인하기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-07-01.dart

void main() {
  int myInt = 1;
  double myDouble = 1.0;
  String myString = "Dr.Sungwon";

  print("$myInt $myDouble $myString");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>Be.Programmer [6]에서 언급한 것 처럼, void main() {과 }는 향후 설명하면, 그 사이에 있는 내용을 다루는 것이 이번 글의 범주 입니다. 그러면 각각에 대해서 한줄씩 설명 합니다. 참고로 darttutorial-07-01.dart 프로그램의 출력 값은 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">1 1.0 Dr.Sungwon</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p><em>int myInt = 1;</em> 먼저, Dart 언어에서 하나의 의미 있는 구문의 끝은 ';'로 반드시 마쳐야 합니다. 이러한 이유로 이후의 모든 라인들도 ';'로 끝나는 것을 볼 수 있습니다. Dart 언어는 다양한 타입의 데이타를 처리할 수 있는데, 여기서 int는 integer의 약자로서 정수를 처리할 수 있음을 의미합니다. 정수에 대한 설명은 추후 데이타 타입에 대한 구체적인 설명에서 수행할 예정이며, 당장은 수학의 정수를 다룬다고 보면 됩니다. Dart 언어에서 정수를 다루고 싶다면, 정수에 이름을 붙여야 하는데, 지금은 myInt 라는 이름으로 변수를 하나 만든 겁니다. 이렇게 Dart 에서는 변수를 사용하고 싶으면, 먼저 타입 이름을 앞에 적고, 그 다음에 사용하고자 하는 변수의 이름을 적습니다. 만약, 변수를 만들면서 특정 값으로 초기화를 원한다면, 예제처럼 1의 값을 저장한다는 의미로 "=" 기호를 사용합니다. 이는 수학과 같습니다. 결론적으로 이 줄은 정수를 저장하는 용도로 myInt 변수를 만든후, 1의 값을 초기화 값으로 저장한다는 의미입니다. 여기서 꼭 int와 같이, 저장할 값을 미리 예측해서 일일이 적어야 하냐고 묻는다면, 꼭 그렇지는 않습니다. Dart 언어는 타입을 지정할 수도 있고, 밑에 설명하듯이 Dart가 타입에 맞춰서 알아서 처리하도록 할 수도 있습니다.  </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>double myDouble = 1.0;</em> 앞서와 유사한 의미인데, double은 double 혹은 floating-point 라고 해석하여 실수형 변구를 지칭합니다. 따라서, 이 줄은 myDouble 이라는 이름으로 실수를 저장할 변수를 만들고, 1.0의 값으로 초기화를 한다는 의미입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>String myString = "Dr.Sungwon";</em> 컴퓨터가 다루는 데이타가 숫자에 국한되지는 않습니다. String 타입은 영어 단어가 의미 하듯이, 문자열(string)을 다루는 Dart의 데이타 타입을 의미합니다. 지금은, 글을 작성할때 말을 하는 것을 의미하는 인용 구문인 " " 기호를 사용하여, "Dr.Sungwon"이라는 글자를 만든후, myString 변수에 저장하는 것을 의미합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>지금처럼 integer, double, String과 같은 구체적인 타입을 사용하여 변수를 만드는 방식은 다루고자 하는 값의 타입이 바뀌지 않는 다는 전제에서 사용합니다. 만약 서로 다른 타입의 변수들 간에 값을 주고 받도록 하려 하면, 다음과 같이 에러가 나타남을 볼 수 있습니다. 그림에서 myDouble = myInt;와 myString = myInt;처럼 하여 서로 다른 타입으로 값을 전달하게 하였는데, 이미 실행전에 MSVC에서 붉은 색으로 에러가 있음을 보여주고 있으며, 이를 무시하고 실행을 하면 에러가 날 것이라는 경고를 보여주는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":364} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-1.12.42.png" alt="" class="wp-image-364"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>변수를 만들때, 굳이 저장되는 값을 생각하지 않고 만들고 싶다면, var 문법을 사용할 수 있습니다. darttutorial-07-01.dart에서 구체적으로 타입을 정의한 것을 var 문법으로 바꾼 예제 프로그램은 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-07-02.dart

void main() {
  var myInt = 1;
  var myDouble = 1.0;
  var myString = "Dr.Sungwon";

  print("$myInt $myDouble $myString");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>프로그램의 수행결과는 1 1.0 Dr.Sungwon 로 제대로 출력하는 것을 볼 수 있습니다. 하지만 var 문법을 사용하는 경우도, 앞서 설명한 것처럼, 서로 다른 타입의 값을 주고 받는 방식은 에러를 만듭니다. 이런 방식을 static type 이라고 부르며, 불편할지 모르겠지만 서로 다른 타입의 값들을 주고 받으면서 에러가 발생할 수 있는 프로그램에서 에러를 억제하는 효과를 제공합니다. C++의 경우도 이렇게 static한 type checking을 지원하는 언어입니다. 하지만, 최근의 프로그래밍 언어들은 변수를 만들때 타입을 지정하지도 않으며, 서로 다른 타입의 값들을 서로 주고 받는 것이 원활합니다. Dart는 이런 dynamic type 방식도 지원합니다. 서로 다른 타입의 변수들 간에 자유롭게 데이타를 주고 받는 소스 코드는 아래의 darttutorial-07-03.dart과 darttutorial-07-04.dart 처럼 var 문법 대신 Object 문법을 사용하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-07-03.dart

void main() {
  Object myInt = 1;
  Object myDouble = 1.0;
  Object myString = "Dr.Sungwon";
  Object temp;

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print("$myInt $myDouble $myString");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>Object 대신 아래처럼 dynamic 문법을 사용하여도 동일한 동작을 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-07-04.dart

void main() {
  dynamic myInt = 1;
  dynamic myDouble = 1.0;
  dynamic myString = "Dr.Sungwon";
  dynamic temp;

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print("$myInt $myDouble $myString");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>두 프로그램의 수행 결과는 모두 1.0 Dr.Sungwon 1 입니다. 서로 다른 타입의 변수들끼리 값을 주고 받아도 문제가 없으므로, 개발자는 저장할 정보에만 집중하고, 이들의 타입에 대해서는 신경을 쓰지 않아도 됩니다. 이렇게 서로 다른 타입간에 정보를 주고 받는 dynamic 타입과 static 타입은 서로 다른 용도이지, 어느쪽이 좋고 나쁘다라고 하는 문제는 아닙니다. 따라서, 본인이 작성하는 프로그램에서 엄격한 타입 checking이 필요한지 아닌지에 따라서 선택하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>참고로 darttutorial-07-03.dart과 darttutorial-07-04.dart 프로그램에서는 변수 temp를 만드는 순간에 초기화 값을 주지는 않았습니다. 이런 경우 Dart는 해당 temp 변수의 값을 자동으로 <em>null</em>로 초기화 합니다. 프로그래밍 언어에 따라서 의미없는 값이 들어가는 경우가 있는, 이를 통상 garbage 값이라고 합니다. Dart는 초기화 되지 않은 변수가 null 값을 갖도록 함으로서, 이후 변수에 값이 있는지 없는지 점검을 용이하게 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>[참조] print 구문으로 복수의 변수 값 출력하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Hello World! 프로그램을 출력할 때는, <em>print("Hello World!");</em>를 통해서, "Hello World!" 문자열을 화면에 출력하였습니다. 그런데 darttutorial-07-01.dart에서는 <em>print("$myInt $myDouble $myString");</em>로 인용구문을 사용한 문자열의 출력처럼 보이지만, 단순하게 문자열을 출력하는 것과 다른 역할을 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>그러면, 무슨 의미인지 위에서 미리 보여준 출력 값으로 동작을 유추해 봅니다. darttutorial-07-01.dar의 출력 값을 "1 1.0 Dr.Sungwon"로 하였는데요, print 구문의 출력 내용의 문자열에 '$' 기호가 있으면, 해당 기호 뒤의 이름에 해당하는 변수(혹은 상응하는 타입)의 값을 출력하게 됩니다. 따라서, print 구문은 순서대로 myInt 변수 값인 1, myDouble 변수 값인 1.0 그리고 myString 변수 값인 Dr.Sungwon을 출력하게 된 것입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이후 복수의 값을 출력하기 위한 용도로 요기하게 사용하기 바랍니다. print 구문은 매우 다양한 기능을 제공하므로, 이에 대한 부분은 필요할 때마다 하나 하나 알아 갈 것 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>상수 (Constants)</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>수학의 상수의 개념처럼, 변하지 않는 값을 의미하며, Dart는 두가지 방법으로 상수를 지원합니다. 첫째는 final 문법이며, 둘째는 const 문법입니다. 아래의 darttutorial-07-05.dart는 둘을 사용한 예제 프로그램이며, 수행결과는 Sungwon Lee 3.141592 1.3 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-07-05.dart

void main() {
  final String firstName = "Sungwon";
  final secondName = "Lee";

  const double myPi = 3.141592;
  const changeRate = 1.3;

  print("$firstName $secondName $myPi $changeRate");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>darttutorial-07-05.dart 프로그램에서 사용하는 firstName, secondName, myPi, changeRate는 프로그램에서 값을 바꿀수 없습니다. 따라서 수학의 상수와 같이 고정된 값을 저장하도록 합니다. 차이점은 개발자 입장에서 미묘한데, const는 말 그대로 constant로서, Dart로 작성한 프로그램을 컴퓨터에서 수행할 수 있는 형태로 바꿔주는 compile 시점에서 상수로 만드는 것을 의미합니다. 이에 반하여, final 문법은 정확하게는 "프로그램 전체에서 한번만 값을 저장할 수 있는 변수"를 의미합니다. 하지만, 개발자 입장에서는 상수 값을 저장하는데 사용함에 큰 차이를 느끼기는 어렵습니다. final과 const 문법을 사용할때는 darttutorial-07-05.dart 처럼 구체적인 타입을 적어줄 수도 있고, 그렇지 않으면 final과 const 문법만 사용하여도 무방합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이 글에서는 컴퓨터 프로그램에서 가장 기초적인 내용인 변수와 상수에 대해서 다뤘습니다. 컴퓨터에서의 변수와 상수는 수학과 같은 숫자를 다룰수도 있지만, 글자 등의 다양한 데이타를 다룰 수 있는 개념입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":136,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="136" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
