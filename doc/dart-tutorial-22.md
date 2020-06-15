# Dart 기초문법 - Making Class - Part.3 

<!-- wp:paragraph -->
<p>클래스에 대한 마지막 글로써, 소소하지만 알아두면 요긴한 클래그 관련 기능들(Auxiliary Useful Features)에 대해서 살펴보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>?. Operator</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>만약 p?.y = 4;와 같은 코드가 있다면, 이는 클래스 p가 null이 아닌 경우에 대해서만 멤버 변수 y에 4 값을 저장하는 동작을 한다는 의미입니다. 이렇게 함으로써, null 상태인 클래스에 실수로 접근하는 에러를 줄여 줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Initialization List</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Initialization List는 constructor의 표현을 좀 더 쉽게 합니다. 앞에서 만들었던 Point 클래스의 constructor를 다시 본다면, 매우 단순하게 x, y 좌표 값을 받아서 멤버 변수에 각각 저장 했습니다. 이런 경우 굳이 메소드의 본문을 채우지 않고, 다음과 같은 형태로 초기화가 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Point([var numX = 0, var numY = 0]) 
  : this.x = numX,
    this.y = numY {
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이렇게 멤버 변수에 바로 대응이 되는 입력 파라메타만 전달 받는 다면, 더 간단한 형태로 다음과 같이 입력 파라메타를 바로 멤버 변수에 넣는 방법도 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>Point([this.x = 0, this.y = 0]) {
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>첫번째 입력 파라메타는 바로 객체의 x 값으로 할당되고, 두번째 입력 파라메타는 y 값으로 할당됩니다. 만약, 값을 주지 않으면 default 값으로 각각 0으로 설정하는 것은 동일 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Factory Constructor</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Factory constructor는 앞서에서 이야기한 일반적인 costructor가 매번 새로운 객체를 만드는 것과 다르게, 조건에 맞춰서 이미 만들어진 객체를 사용하는 등의 다른 동작을 할 수 있는 경우를 의미합니다. 예를 들어 공식 홈페이지의 다음 예제를 살펴봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }

  static get cacheLength => _cache.length;
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>가장 먼저 주의 깊게 볼 부분은 _cache 라는 Map 타입의 멤버 변수로서 static 타입으로 되어 있기에, 클래스에서 만들어지는 객체와 상관없이 존재합니다. 그리고 일단 비어있는 Map으로 만들어 지며, 내부적으로 문자열의 이름과 스스로의 객체를 저장하도록 되어 있습니다. 이로서, Logger는 매번 객체자 만들어지지 않게 하고, 만들어지는 객체를 내부적으로 저장하되, static으로 처리 하여 관리하기에, 필요할때 이 static한 Map안의 객체들로 constructor의 결과를 제어하겠다는 의지를 밝힌 셈입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>다음으로 중요한 구문은 실제 constructor인 Logger(String name) 입니다. 내부를 보면, putIfAbsent 구문을 사용하여, 만약의 경우 _cache가 비어 있을때에만, constroctor로 받은 이름과 Logger 객체를 새롭게 Map에 저장하는 것을 볼 수 있습니다. 따라서 한번만 객체가 만들어 지는 것을 유추할 수 있습니다. 이에 대한 실행 구문을 다음과 같이 해서 실제 객체를 만들어 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>var logger1 = Logger('UI');
var logger2 = Logger('UI');
print("[04]\$ ${Logger.cacheLength}");
logger1.log('[05]\$ [object:${logger1.hashCode}] Button clicked');
logger2.log('[06]\$ [object:${logger2.hashCode}] Button clicked');
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>분명 Logger constructor를 두번 호출했고, logger1과 logger2에 저장하는 과정을 거쳤습니다. 하지만, Logger 클래스의 static Getter인 cacheLength를 호출해서, _cache에 저장된 객체의 수를 확인하면, 1로 나오는 것을 볼 수 있습니다. 객체는 하나만 만든 것입니다. 이러지는 log 문장에서 객체의 식별자를 보면 모두 동일한 값입니다. 이런 식으로 Dart 언어에서는 factory constructor를 사용하여, 클래스에서 만들어 지는 개체들의 제어/관리하는 기능을 제공하고 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Enumerated Types</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Enumerated types는 enums라고도 불리우며, <em>enum</em> 문법으로 구현합니다. 단어를 사용하여 순서를 나타내고 싶을때 사용하거나, 제한된 값을 가지는 문제를 좀 더 용이하게 개발하도록 하는 문법입니다. 예를 들어, enum Color { red, green, blue } 라고 하면, red는 0, green은 1, blue는 2 값을 갖게 됩니다. 따라서 세가지 값만을 가지는 문제에 사용하게 됩니다. 예를 들어 var aColor = Color.blue; 처럼하여, aColor 변수가 Color가 가진 세가지 값 외에 값을 갖게 함으로 발생 가능한 에러를 방지합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Sample Program</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이번 글에서 다룬 문법들을 적용한 하나의 샘플 프로그램을 darttutorial-22-01.dart 프로그램으로 구현하였습니다. 한 줄 한 줄 읽어 가면서 이해를 해보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-22-01.dart 
// Reference: https://dart.dev/guides/language/language-tour#enumerated-types

class Point {
  // Instance Variables
  var x;
  var y;

  // Constructor with optional and default parameters
  Point([this.x = 0, this.y = 0]) {
  }
}

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }

  static get cacheLength => _cache.length;
}

// Enumerated Types
enum Color { red, green, blue }

void main() {
  // ?. Operator
  var p0;
  p0?.x = 0;
  p0?.y = 0;
  print("[01]\$ $p0");

  // Initialization List
  var p1 = Point(3,4);
  var p2 = Point();
  print("[02]\$ (${p1.x},${p1.y})");
  print("[03]\$ (${p2.x},${p2.y})");

  // Factory Constructor 
  var logger1 = Logger('UI');
  var logger2 = Logger('UI');
  print("[04]\$ ${Logger.cacheLength}");
  logger1.log('[05]\$ [object:${logger1.hashCode}] Button clicked');
  logger2.log('[06]\$ [object:${logger2.hashCode}] Button clicked');

  // Enumerated Types
  print("[07]\$ ${Color.red.index} ${Color.green.index} ${Color.blue.index}");
  var aColor = Color.blue;
  switch (aColor) {
   case Color.red:
      print('[08]\$ Red as roses!');
      break;
   case Color.green:
      print('[08]\$ Green as grass!');
      break;
   default: // Without this, you see a WARNING.
      print('[08]\$ ${aColor}'); // 'Color.blue'
  }
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>darttutorial-22-01.dart 프로그램의 수행 결과도 다음과 같이 포함하였습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[01]$ null
[02]$ (3,4)
[03]$ (0,0)
[04]$ 1
[05]$ [object:271182360] Button clicked
[06]$ [object:271182360] Button clicked
[07]$ 0 1 2
[08]$ Color.blue
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>세 번에 걸쳐서 Dart 언어의 클래스에 대해서 알아 보았습니다. Dart 언어가 객체지향 프로그래밍 언어인 만큼 다양한 객체지향 기법들을 Class를 통해서 제공하고 있습니다. 본 글에서는 소소하지만 나름 유용한 이슈들을 마지막으로 다루어 보았습니다. 클래스를 설계하고 개발하는 작업은 명확하게 정해진 규칙이 없습니다. 여러 클래스를 만들어 보고, 좋은 reference 들을 공부하여 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":134,"height":48} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="134" height="48"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
