# Dart 기초문법 - Map

<!-- wp:paragraph -->
<p>Map은 한글로 번역을 하면 아마도 '지도'가 될 것 같습니다. 이렇게 되면 대부분의 반응은 "뭐지?"가 될 텐데, 다른 언어에서는 유사한 데이타 타입을 Dictionary로 명명하고 있습니다. Dictionary 단어가 사전이라는 의미듯이, Map은 키워드가 있고, 이 키워드에 해당하는 값을 갖는 사전과 같은 기능이 필요한 경우에 사용하는 데이타 타입 입니다. 우리가 익숙한 사전에서 알 수 있듯이, 일단 키워드가 있습니다. 이 키워드는 중복이 되면 안됩니다. 그리고 키워드에 상응하는 값이 있어야 합니다. 값은 중복이 되어도 상관 없습니다. 따라서, Map은 "Key : Value"의 형태를 가집니다. 그러면, Map에 대해서 darttutorial-17-01.dart 예제 프로그램을 통해서 이해하여 보도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-17-01.dart
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/Map-class.html

void main() {
  // #1 Sample Map for programming languages
  var dictLanguageYear = {
    "C++" : 1983,
    "Dart" : 2011,
    "Go" : 2009,
    "Python" : 1991
  };

  print("#1 $dictLanguageYear");

  // #2 Sample Map for programming languages
  Map<String, String> dictLanguageAuthor = {
    "C++" : "Bjarne Stroustrup",
    "Dart" : "Lars Bak - Kasper Lund",
    "Go" : "Robert Griesemer",
    "Python" : "Guido van Rossum"
  };

  print("#2 $dictLanguageAuthor");

  // #3 Sample Map for programming languages
  var myMap = Map();
  myMap["C++"] = 1983;
  myMap["Dart"] = 2011;
  myMap["Go"] = 2009;
  myMap["Python"] = 1991;

  print("#3 $myMap");

  // #4 Manipulate an element of a Map
  var myElement = myMap["Dart"]; 
  dictLanguageAuthor["Go"] = "Robert Griesemer - Rob Pike - Ken Thompson";

  print("#4 $myElement :: ${dictLanguageAuthor["Go"]}");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이 프로그램의 수행 결과를 미리 아래와 같이 포함 하였으니, 한번 눈으로 코드를 읽고, 결과를 예상하고, 아래의 결과와 비교하여 본 후, 그 다음에 실행해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>#1 {C++: 1983, Dart: 2011, Go: 2009, Python: 1991}
#2 {C++: Bjarne Stroustrup, Dart: Lars Bak - Kasper Lund, Go: Robert Griesemer, Python: Guido van Rossum}
#3 {C++: 1983, Dart: 2011, Go: 2009, Python: 1991}
#4 2011 :: Robert Griesemer - Rob Pike - Ken Thompson
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>#1은 가장 기본적으로 초기화 값을 통해서 Map을 만드는 모습을 보여 줍니다. 먼저, Map은 { ... } 기호를 사용하여, 값을 전달 할 수 있습니다. 이는 Set과 동일합니다. 그리고 "Key : Value"의 형태로 값을 나타내기에, "Key : Value"의 값들을 "," 쉼표를 이용해서 복수개 나열한 것을 볼수 있습니다. Key와 Value에 들어 올 수 있는 데이타 타입은 지금까지 설명했던 Dart의 데이타 타입 들로 만들수 있습니다. 그리고 type inference 기능을 이용해서, 변수의 타입을 var로 정의하여 만든 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#2는 구체적으로 데이타 타입을 Map으로 하여 만들었습니다. 데이타 타입인 Map을 앞에 적은후, "Key : Value"에 상응하는 형태인 &lt;String, String&gt;으로 작성합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#3은 비어있는 Map을 만드는 것을 보여 줍니다. Map()을 변수에 전달함으로써, 비어있는 Map을 만들수 있습니다. 그리고는 인덱스를 의미하는 [ ... ] 기호 사이에 순서를 의미하는 숫자 대신에 키워드 값을 적어주면, 해당 키워드에 상응하는 값을 가져오거나 저장할 수 있습니다. 예제 에서는 비어있는 Map에 해당 키워드에 상응하는 값 들로 저장하는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#4는 #3의 연장선 상에서, 키워드를 통해서 해당 키워드에 상응하는 값을 추출하고, 또한 키워드에 해당 하는 값들을 변경하는 것을 보여줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p> Dart 언어의 공식 사이트에서 Map 클래스에 대한 자세한 설명을 볼 수 있습니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/Map-class.html">참조</a>]. 앞서 다른 클래스 들에서 나타난 length property를 포함한 여러 property 들이 유사하게 Map 클래스에도 있습니다. 아울러 addAll(), clear() 등 다양한 메소드들도 Map 클래스에서 제공하고 있으니, 공식 사이트의 정보를 살펴보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이 글에서는 Map에 대해서 알아 보았습니다. 본인의 프로그램에서 "Key : Value"의 pair로 다루는 프로그램을 작성하는 경우에는 Map 클래스를 사용합니다.  </p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":136,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="136" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
