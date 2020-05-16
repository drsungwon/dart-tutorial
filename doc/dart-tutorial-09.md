# Dart 기초문법 - String Types 

<!-- wp:paragraph -->
<p>Be.Programmer [07]에서 String이라는 데이타 타입을 미리 살펴보았습니다. 글자들로 이루어진 문자열을 저장하는 용도였습니다. String은 매우 많은 용도에서 활용이 가능합니다. 수학 계산은 정수와 실수 타입을 주로 작업을 하지만, 웹 크롤링, 자연어 처리 등 다양한 분야에서 컴퓨터가 처리하는 데이타 타입은 String을 사용하여 처리합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>String 데이타 타입</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Be.Programmer [07]에서 간단히 살펴본 String은 다음의 다양한 형태로 문자열을 저장할 수 있습니다. 아래는 dart.dev 사이트의 예제를 간단히 변환한 형태입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-09-01.dart

void main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(" $s1 \n $s2 \n $s3 \n $s4 ");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>프로그램의 수행결과는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted"> Single quotes work well for string literals. 
 Double quotes work just as well. 
 It's easy to escape the string delimiter. 
 It's even easier to use the other delimiter.</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>문자열은 ' ' 혹은 " " 기호를 사용하여 표현 합니다. 둘 간의 차이점은 없습니다. s1은 ' ' 기호를 사용하였고, s2는 " " 기호를 사용한 경우입니다. s4 처럼 it's 같은 표현을 하고 싶다면, Double quotation mark 기호로 문자열을 감싸 주면 됩니다. 그렇지 않은 경우는 문자열 안에서 single quotation mark 앞에 \ 기호를 사용하면 됩니다. 이렇게 하면, 문자열안에 \ 기호 뒤의 글자를 넣기 위한 특수 기호로 \ 기호를 인식함으로, 결과적으로 s3의 결과 값처럼, 기호 \은 사라지고 ' 기호만 출력이 되는 것을 볼 수 있습니다. 특수 기호인 \을 사용한 예가 마지막 print 구문 안에서도 있는 것을 볼 수 있다. \ 기호 뒤에 n이 있으면, 줄 바꾸기를 의미합니다. 따라서 결과처럼 각각의 문자열이 다른 줄로 출력된 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>String 데이타 타입으로 정수/실수 값 변환하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Be.Programmer [8]에서 숫자만으로 이루어진 문자열을 정수 혹은 실수 데이타 타입으로 변환하는 예제를 살펴 보았습니다. 당연하게 유추하겠지만, 반대의 경우도 가능합니다. 아래의 darttutorial-09-02.dart 프로그램을 살펴봅시다. </p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-09-02.dart

void main() {
  String s1 = 1.toString();
  String s2 = 3.141592.toStringAsFixed(4);

  print("$s1 $s2");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>위의 darttutorial-09-02.dart 프로그램을 보면, s1은 정수 1의 숫자 뒤에 '.' 기호를 사용한 후, toString()이라는 문법을 사용하는 것을 볼 수 있습니다. 이런 문법은 이후 클래스를 배우면 원리를 이해할 수 있습니다. 지금은 이런 형태의 변환이 필요할때를 위하여 조기에 설명을 하고 있습니다. s2의 경우는 실수 데이타를 문자열로 바꾸는 것을 보여 줍니다. 실수의 경우도 마찬가지로, 실수의 마지막 끝에 '.' 기호를 사용한 후, toString을 사용하는데, 이 경우는 소숫점 n자리 까지만 짤라서 문자열로 바꾸는 문법인 toStringAsFixed를 사용하였습니다. 지금은 n이 4이므로, 실수인 3.142592의 소수점 밑 4번째 자리인 5까지를 포함하여 문자열을 만듭니다. 따라서 print 구문은 1 3.1416을 결과로 나타냅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>복수 문자열 혹은 복수 줄로 이루어진 String 데이타 만들기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>다루고자 하는 문자열을 만들기 위해서 복수의 문자열을 연결해서 하나로 만들어야 하거나, 혹은 여러 줄의 문장을 연결해야 하는 경우가 있습니다. 이를 위한 Dart 언어의 예제가 아래의 darttutorial-09-03.dart에 3가지 방법으로 나타나 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-09-03.dart

void main() {
  String s1 = "My name is ";
  String s2 = "Dr.Sungwon";
  String s3 = s1 + s2;

  var s4 = 'My '
      'name '
      'is '
      'Dr.Sungwon';

  dynamic s5 = '''
  My name is Dr.Sungwon.
  Dart is lovely.
  ''';

  print("$s3\n$s4\n$s5");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>s3는 두 개의 문자열을 합치는 방법입니다. 낯설지만 숫자 데이타를 다룰때 설명했던 + 연산자는 문자열에서도 사용 가능합니다. 의미는 수학 처럼 두개의 문자열을 하나로 합치는 효과 입니다. 이렇게 함으로써 s3는 "My name is Dr.Sungwon"가 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>s4는 특이하지만, 복수의 문자열을 그냥 연이어 나열한 경우입니다. 이 경우는 'My ' + 'name' + 'is' + 'Dr.Sungwon'의 의미라고 보면 됩니다. 따라서 s4를 출력하면 s3와 동일한 결과를 출력 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>s5는 시작 부분에 ' 기호를 3번 연결해서 '''와 같이 나타냈고, 마지막 줄에 다시 '''을 사용하여 닫습니다. 이 문법이 의미하는 것은 s5가 두개의 줄이 하나로 합쳐진 복수의 줄을 갖는 문자열이라는 의미입니다. 따라서 s5를 출력하면 다음과 같이 나타납니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">  My name is Dr.Sungwon.
  Dart is lovely.</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>컴퓨터는 수학을 주로 다루기 위하여 만들어 졌지만, 최근의 컴퓨터 활용 분야는 인간이 만들어 놓은 데이타를 다루는 것이 주 목적이 되었기에, 다양한 문자와 책들을 다루고 있습니다. Dart  언어의 String은 이런 문자열(들)을 다루는 기능을 제공합니다. 이후 클래스와 함수를 배우고 나면 Dart의 String이 처리할 수 있는 보다 다양한 기능을 다시 알아 보겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":132,"height":47} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="132" height="47"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
