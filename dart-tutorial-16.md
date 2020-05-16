# Dart 기초문법 - Set 

<!-- wp:paragraph -->
<p>Set은 한글로 집합으로 해석 되며, 실제 수학의 집합과 동일한 개념입니다. 따라서 몇가지 특징을 가지는데, 1) 중복된 element를 갖지 않습니다. 즉, 동일한 값이 중복해서 있으면, 하나로 처리합니다. 2) Element의 순서에 의미가 없습니다. List의 경우는 이와 다르게, 중복 Element를 허용하며, 프로그래머가 지정한 순서를 유지하였습니다. 그러면, Set에 대한 사항을 예제 프로그램을 통해서 알아 보도록 하겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>아래의 darttutorial-16-01.dart는 Set의 선언하고 활용하는 내용으로 만들어져 있습니다. 총6가지 사항에 대해서 설명하고 있으며, 전체 내용에 대한 이해는 Dart 언어 공식 사이트의 내용을 참조하도록 합니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/Set-class.html">참조</a>].</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-16-01.dart 
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/Set-class.html

void main() {
  // #1 Simple List and Set
  var myList1 = ["C++", "Dart", "Go", "Python", "Dart"];
  print("#1.1 $myList1");
  var mySet1  = {"C++", "Dart", "Go", "Python", "Dart"};
  print("#1.2 $mySet1");

  // #2 Empty Set and element addition
  var mySet2 = <string>{};
  mySet2.add("C");
  mySet2.addAll(mySet1);
  print("#2 $mySet2 :: " + mySet2.length.toString());

  // #3 ...? operator usage
  var mySet3 = {...?mySet2, "R"};
  print("#3 $mySet3");

  // #4 contains() method
  if(mySet3.contains("Dart") == true) {
    print("#4 Dart language is included in mySet3");
  }

  // #5 union() method
  var mySet4 = {"JavaScript", "TypeScript"};
  var mySet5 = mySet3.union(mySet4);
  print("#5 $mySet5");

  // #6 dynamic Set for heterogeneous types
  Set<dynamic> mySet6 = {"C++", "Dart", "Go", "Python", 1, 2, 3};
  print("#6 $mySet6");
}
</dynamic></string></pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>darttutorial-16-01.dart 프로그램의 수행 결과를 아래와 같이 미리 표기 하였으니, 참조하여 프로그램의 문법과 의미를 이해하도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>#1.1 [C++, Dart, Go, Python, Dart]
#1.2 {C++, Dart, Go, Python}
#2 {C, C++, Dart, Go, Python} :: 5
#3 {C, C++, Dart, Go, Python, R}
#4 Dart language is included in mySet3
#5 {C, C++, Dart, Go, Python, R, JavaScript, TypeScript}
#6 {C++, Dart, Go, Python, 1, 2, 3}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>#1은 List와 Set의 차이점을 간단하게 보여주고 있습니다. myList1과 mySet1은 모두 같은 element로 초기화를 하였습니다. 차이점은 List는 [ ... ] 괄호를 사용하지만, Set은 { ... }의  괄호를 사용합니다. Element를 보면 'Dart'가 중복되게 들어가 있습니다. 그러면, 이제 print 구문의 결과를 확인합니다. List는 'Dart' 문자열이 중복되어 2개 들어가 있는 것을 확인 가능합니다. 하지만 Set의 결과를 보면, Dart가 하나만 있는 것을 볼 수 있습니다. 이렇게 Set은 중복된 element를 하나만 유지합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#2는 비어있는 Set을 하나 만드는 예제를 보여줍니다. &lt;String&gt;{}의 의미는 String을 저장할 비어있는 Set이라는 의미입니다. 그리고 List의 설명에서도 있었던 메소드인 add()와 addAll()이 Set에도 있음을 보여주고 있습니다. 기능은 동일합니다. 마찬가지로 Set에도 length property가 있으면, List와 동일하게 Set내의 Element 갯수를 알려줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#3는 List의 초기화 시에 사용했던 ...? 문법도 Set에서 지원하는 것을 보여줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#4는 contains() 메소드를 설명하며, 이는 Set안에 입력 파라메타와 같은 문자열이 element로 포함되어 있으면 true를 그렇지 않으면 false를 return 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#5는 수학의 집합에서 제공하는 합집합 기능을 지원하는 메소드 입니다. mySet3의 element와 입력 파라메타인 mySet4의 element를 모두 모아서, 새로운 Set을 만들어 return 하는 메소드입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#6은 Set의 element가 서로 다른 데이타 타입으로 되도록 만드는 경우입니다. List 경우와 마찬가지로 dynamic 객체 형태로 Set을 만드는 generic 문법입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>풀어야 하는 문제가 수학의 집합 개념이 필요하다면, Dart 언어의 Set을 사용하여 편리하게 소프트웨어 개발을 할수 있습니다. 이 글에서는 Set 클래스에서 제공하는 다양한 property와 method 중 일부만 보였으며, 공식 사이트의 설명을 제대로 읽어 보기를 권합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
