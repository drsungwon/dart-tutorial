# C++ 프로그래머를 위한 Quick Summary Part.2

<!-- wp:paragraph -->
<p>지난 Part.1에서는 어떤 언어든 가지고 있는 기초적인 문법에 대해서, Dart와 C++간에 유사한 부분이 많다는 것을 확인했습니다. 이번 글에서는 클래스, 예외처리와 함께 비동기적 동작에 대해서 설명합니다. 이를 위해서 Dart 공식 홈페이지에 있는 간단한 예제 들을 살펴보겠습니다 [<a href="https://dart.dev/samples">출처</a>: Dart 공식 홈페이지의 Language samples].</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Class</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이 글에서 다룰 메인 주제는 Dart의 클래스 입니다. Part.1의 기초 문법은 Dart와 C++이 크게 다르지 않았지만, 클래스에는 두 언어가 다소 차이가 있는 편입니다. Dart의 클래스에 대해서는 향후 자세하게 다룰 예정이므로, 여기서는 Dart의 클래스의 주요 기능을 짧게 살펴보기로 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":320} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-9.40.09.png" alt="" class="wp-image-320"/><figcaption>[그림 1] Dart를 이용한 Spacecraft 클래스 예제 (출처: dart.dev)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>클래스를 시작과 끝인 1번과 28번 라인은 C++과 동일합니다. Class aggregation을 위한 2와 3번 라인도 동일합니다. Dart의 클래스도 C++과 동일하게 constructor를 가지며, C++과 유사한 방식의 constructor가 6번~8번 라인에 나타나 있습니다. 여기서 6번 라인을 보면, C++처럼 this 문법이 있는 것을 볼 수 있으며, 의미는 C++과 유사하다. 입력 파라메타 부분에서 this에 '.' 연산자를 사용함으로써, 입력 받은 두개의 파라메타를 객체 자신의 멤버 변수에 각각 대응하는 것으로 동작합니다. 31번 라인에서, 이 방법을 사용한 constructor 활용 예제가 있습니다. 첫번째 문자열은 Spacecraft 클래스 기반 voyager 객체의 멤버 변수인 name에 매핑되며, 두번째 DateTime 객체는 멤버 변수인 launchDate에 매핑됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart는 다른 방법의 contructor로써, named constructor를 제공합니다. 그림의 11번 라인에 있는 것으로서, 클래스의 이름에 '.' 연사자를 선언하는 부분에서 사용한 후, constructor로 사용할 함수 이름을 사용합니다. 현재 이 constructor는 unlaunched 이며, 입력 파라메타를 문자열로 하나 받습니다. 이렇게 받은 이름을 가지고 멤버 변수인 name을 채우고, 멤버 변수인 launchDate는 null로 채우는 것을 ": this(name, null)" 문법을 통해서 수행하고 있습니다. 이 방법을 사용한 constructor 활용 예제가 35번 라인에 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>클래스 내부의 멤버 함수는 C++과 유사한 방법으로 만들며, 18번 ~ 27번 라인에서 return 값은 없고 (void), 입력 값도 없는 describe()를 볼 수 있습니다. 이 함수의 기능을 설명 하면, 다음과 같습니다. C++ 개발자는 각 라인을 유추할 수 있을 텐데, Dart가 C++과 다른 부분 중심으로 설명합니다. 18번 라인에서는 클래스 이름과 객체 이름을 출력하는데, print 구문의 문자열 안에 $ 기호를 주면, 해당 기호 뒤의 변수 이름을 출력합니다. 22번 라인에서의 ~/ 연산자는 21번 라인의 주석문을 읽어 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>마지막으로 13번과 14번 라인의 설명입니다. =&gt; 화살표 문법을 통해서 일종의 함수인 것으로 유추할 수 있습니다. 여기서 핵심은 get 문법으로서, 이는 launchYear 라는 이름의 getter 함수를 선언하는 것을 의미합니다. 33번과 37번 라인을 보면, 함수를 의미하는 () 기호는 없지만, 객체 내부의 값을 꺼내 오는 것을 볼 수 있습니다. 14번 라인에서 launchDate?.year의 의미는, launchDate가 null이 아닌 경우, launchDate의 멤버인 year 값을 추출하는 것을 의미합니다. 아래는 위의 프로그램을 수행한 결과 입니다. 이해한 결과와 동일한지 확인해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">Spacecraft: Voyager I
Launched: 1977 (42 years ago)
1977
Spacecraft: Voyager III
Unlaunched
null</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Inheritance</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart의 유전의 법칙은 single inheritance이다. 다수의 base class로 부터 derived class를 만들 수 있는 C++과 차이가 있습니다. C++에서 inheritance를 의미하는 ':'에 해당하는 Dart의 문법은 'extends' 입니다. 앞서 [그림 1]의 Spacecraft 클래스를 base class로 하여 Orbiter 클래스를 만드는 예제가 아래에 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">class Orbiter extends Spacecraft {
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>extends 문법을 제외하면, 다른 부분은 C++과 유사한 형태로 충분히 유추 가능하리라 생각합니다. 일단 derived class에는 새로운 멤버 변수인 altitude 라는 이름의 num 타입 객체임을 알 수 있습니다. 그리고 클래스 이름과 같은 이름의 constructor가 있으며, 3개의 입력 파라메타를 받으면, name과 launchDate는 base class 내부의 멤버 변수로 전달하게 되며, 새롭게 만들어진 altitude 변수를 새번째 입력 파라메타 값으로 저장하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Mixins</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart는 base class가 하나만 존재해야 하지만, C++에서 base class가 다수인 효과를 유사하게 만들수 있는 문법인 mixins 기법이 있습니다. 이때 사용하는 문법은 'with' 이며, 통상 inheritance를 하는 'extends' 구문과 함께 사용합니다. 아래는 앞서 만든 Spacecraft 클래스를 base class로 해서, derived class인 PilotedCraft를 만드는 예제를 보여줍니다. 이때 Piloted 클래스를 'with' 문법으로 엮어줌으로써, PilotedCraft 클래스는 base class의 데이타와 메소드외에, Piloted 클래스의 멤버 변수인 astronauts와 멤버 메소드인 describeCrew()를 추가로 갖게 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":321} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-10.28.05.png" alt="" class="wp-image-321"/><figcaption>[그림 2] Mixins 문법을 통한 C++의 Multiple Inheritance와 유사한 기능의 구현 예제</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>그림 2의 프로그램을 실행하면서, PilotedCraft 클래스로 만든 pCraft 객체 안에, Spacecraft 클래스와 Piloted 클래스의 데이타 및 메소드가 함께 포함되어 있는 것을 확인 할 수 있습니다. 이의 실행 결과는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">Spacecraft: Voyager I
Launched: 1977 (42 years ago)
1977
Number of astronauts: 1</pre>
<!-- /wp:preformatted -->

<!-- wp:heading {"level":4} -->
<h4>Abstract class, Overload, Override &amp; Implements</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart에서도 C++의 abstract class를 base class로 갖는 derived class의 개념을 지원합니다. 그리고 base class의 method를 derived class에서 overloading 하거나 override 하는 것도 가능합니다. 이에 대한 사항은 향후 Dart의 클래스 문법을 설명하면서 자세하게 설명하도록 하겠습니다. 결론적으로 Dart의 클래스는 C++의 클래스와 같은 부분도 있지만, 차이가 나는 부분도 존재합니다. C++은 제외한 대부분의 객체지향 언어에서 복수의 base class를 갖지 못하도록 하거나, 가능하더라도 사용하지 않도록 권고하는 것을 본다면, Dart의 클래스는 최근 언어들의 특징에 부합한다고 볼수 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Exception Handling</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart는 C++과 거의 동일한 exception handling 문법을 제공합니다. 즉, try, catch, throw, rethrow의 문법을 제공합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Async</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>통상 동기식으로 동작한다는 것은, A작업이 실행되는 동안에 B작업이 작업을 못하고, A작업의 결과가 종료 되기만을 기다리는 기다리는 문제점이 발생할 수 있습니다. 비동기식 방식은 A작업이 진행되고 있는 동안에, 일단 B작업을 병렬로 처리하다가, A작업이 마쳐지면 이에 대한 후속 조치를 진행함으로, 프로그램이 중간에 멈추는 현상을 완화할 수 있습니다. 이를 위해서 Dart는 async와 await 문법을 제공합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}</void></pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>위의 프로그램에서 printWithDelay() 함수가 비동기식으로 동작한다는 의미에서 async 문법이 사용됩니다. 그리고 함수 안을 보면, Future.delayed() 함수 앞에 await 문법을 사용함으로써, delayed() 함수가 실행되는 동안에 다른 작업들이 동시에 이루어 질 수 있도록 합니다. 이후 delayed() 함수의 작업이 종료되면, 이어서 print(message) 구문을 수행한 후, 함수를 리턴하게 됩니다. 따라서, 함수가 비동기식으로 동작함으로 결과가 나중에 return 된다는 의미에서 결과 값의 타입을 기술하는 부분에서 Future 문법을 사용합니다. 이렇게 함으로써, Dart는 여러 작업이 동시에 비동기적으로 진행되는 것을 지원합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>참고로 C++는 이런 비동기식 작업을 지원하는 언어적인 기능이 약한 편이였지만, C++11(2011년 표준 버전)에서 처음으로 async 동작을 위한 STL이 추가 되었으며, C++17과 C++20에서 지속적으로 개선 작업이 이루어 지고 있습니다 [<a href="https://en.cppreference.com/w/cpp/thread/async">출처</a>]. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이것으로 C++ 개발자를 위해서 Dart 언어와 C++의 유사점과 차이점을 빠르게 알아보았습니다. 이제부터 Dart 언어의 기본 문법에 대해서 자세하게 알아보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
