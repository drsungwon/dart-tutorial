# Dart 기초문법 - List

<!-- wp:paragraph -->
<p>List는 같은 타입 혹은 서로 다른 타입의 데이타를 복수 개 저장하는데 매우 유용한 데이타 타입니다. List는 대부분의 프로그래밍 언어에서 지원하며, 배열(Array)라고도 불립니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>List Creation &amp; Basic Manipulaion</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>예제를 통해서도 알아보겠지만, 일반 변수를 선언하는 방식인 var myList; 문법을 사용하여 만들수도 있고, generic 문법이라고 하는 List&lt;int&gt; myList; 문법을 사용해서도 만들수 있습니다. 전자는 Dart 언어에게 알아서 List 데이타 타입을 정해 달라고 하는 것이고, 후자는 int 데이타 타입을 저장한 List를 만들어 달라는 것입니다. 아래의 darttutorial-15-01.dart예제 프로그램을 통해서 List의 의미와 사용 방법을 자세하게 알아보겠습니다. 다양한 내용이 들어가 있는 이유로 설명을 용이하게 하기 위하여 각각의 기능별로 #1과 같이 번호를 매기어 두었습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-15-01.dart

// Print the type of object
String getObjectType(var para) {
  if(para is List<int>) {
    return ("_List<int>_");
  } else if(para is List<dynamic>) {
    return ("_List<dynamic>_");
  } else {
    return ("_Unknown_");
  }
}

void main() {
  // #1 Simple list with three integers
  var myList1 = [1, 2, 3];
  print("1> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #2 List element access using index operator
  for(var index = 0; index < myList1.length; index++) {
    myList1[index] *= index;
  }
  print("2> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #3 Generic List for heterogeneous data type encapsulation
  List<dynamic> myList2 = [1, 2.0, "myName"];
  print("3> myList2(" + getObjectType(myList2) + ") has ${myList2.length} items: $myList2");

  // #4 Constant value assignment for List - 1
  myList1 = const [11, 12, 13, 14, 15];
  print("4> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #5 Constant value assignment for List - 2
//myList1[0] = 1; // Error
  myList1 = const [101, 102, 103, 104, 105];
  print("5> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #6 ... Operator in List creation - 1
  myList1 = [1, 2, 3];
  var myList3 = [...myList1, 4, 5, 6];
  print("6> myList3(" + getObjectType(myList3) + ") has ${myList3.length} items: $myList3");

  // #7 ... Operator in List creation - 2
  var myList4;
//myList1 = [...myList4, 4, 5, 6]; // Error
  myList1 = [...?myList4, 4, 5, 6];
  print("7> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");
  
  // #8 if Statement in List creation  
  var myList5 = [...?myList1, if(myList2.length != 0) ...?myList2 ];
  print("8> myList5(" + getObjectType(myList5) + ") has ${myList5.length} items: $myList5");

  // #9 for Statement for List manipulation
  for(var item in myList5) {
    print("9>> $item");
  }

  // #10 for Statement in List creation
  var myList6 = ['#0', for(var item in myList5) "#$item"];
  print("10> myList6(" + getObjectType(myList6) + ") has ${myList6.length} items: $myList6");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>List를 만들고 간단하게 다루는 main()의 설명에 앞서, 간단한 함수가 하나 포함되어 있는 것을 볼 수 있습니다. 이름은 getObjectType() 으로, 입력 파라메타로 클래스 객체를 하나 받아서, 이의 타입에 해당하는 문자열을 return 하는 함수입니다. 앞서 설명한 generic한 형태로,  간단하게 int 데이타를 저장하는 List&lt;int&gt;와 dynamic 데이타를 저장하여, 사실상 서로 다른 형태의 데이타를 하나의 List에 저장할 수 있는 List&lt;dynamic&gt; 타입만 식별하는 간단한 함수입니다. 두가지 타입에 부합하지 않으면, "Unknown"으로 return 합니다. 그리고 프로그램의 수행결과를 아래와 같이 미리 나타내었습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":456} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-31-오후-1.14.06-1024x494.png" alt="" class="wp-image-456"/><figcaption>[그림 1] List Creation &amp; Basic Manipulation 프로그램 수행 결과</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>#1은 가장 간단한 형태인 정수를 저장하는 List를 만드는 것을 보여줍니다. List는 [ ... ] 괄호로 만들어 지며, 안에 저장할 값들을 ',' 쉼표 기호를 사용하여 나열하면 됩니다. 저장하는 값들이 int 타입이지만, var 변수 타입을 사용함으로서, Dart 언어에게 알아서 타입을 만들어 달라고 하는 것이며, 이는 앞서에서 설명했던 type inference 기능의 일종입니다. print 구문이 실행되면, Dart 언어가 알아서 int 데이타가 저장된 List인 List&lt;int&gt; 타입으로 myList1을 만든것을 확인 할 수 있습니다. 그리고 클래스의 멤버 property인 length를 통해서 3개의 element가 들어 있음을 확인하였고, print 구문에 List 이름을 적어줌으로써, myList1 안의 Element들을 화면에 출력해 보았습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#2는 for 반복문을 사용해서, List의 element에 접근 하는 것을 보여줍니다. String에서 배운 index operator를 동일하게 사용하고 있으며, 맨 처음 element인 0번째 element 부터 List의 길이만큼 반복하면서, element 들에 간단한 곱셈을 하여 값을 업데이트 하는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#3은 서로 다른 데이타 타입을 하나의 List에 저장하기 위하여, dynamic 타입으로 List를 만들어 보겠습니다. myList2를 보면 정수 1, 실수 2.0, 그리고 문자열 "myName"을 함꼐 저장하는 것을 볼 수 있습니다. 그리고 타입을 출력해 보면, List&lt;dynamic&gt;으로 나타나는 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#4는 상수형 List를 myList1에 저장합니다. 상수형 List라는 단어가 낯설수도 있지만, 말그대로 상수입니다. 즉, 등호의 오른쪽의 const [11, 12, 13, 14, 15]는 5개의 element를 가진 List인데, 이 다섯가지의 값은 바뀔수 없다는 의미입니다. #5의 myList1[0] = 1;를 주석 처리 하였는데, 이를 실제로 실행하면 에러가 납니다. 이유는 myList1이 가리키는 값이 상수인데, 이의 0번째 값을 바꾸려 하니, 상수 값 변경 시도로 인하여 에러가 나는 것 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#5는 상수형 List를 저장하고 있는 myList1의 값을 다른 상수형 List로 변경하는 예제입니다. 헷갈리지 말아야할 사항은 myList1은 변수입니다. 따라서 저장하는 값은 바뀔수 있습니다. 저장하고 있는 값이 상수로서, 이 값 내부를 바꾸지 못할 뿐입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#6에는 새로운 List 문법인 "...List명"을 볼 수 있습니다. 이는 List명안의 모든 element를 가져온다는 의미입니다. 따라서 myList3 = [...myList1, 4, 5, 6];는 1) myList1의 모든 element를 꺼내서 새로운 List에 저장을 합니다. 2) 추가로 명시한 정수 4,5,6을 새로운 List의 뒷부분에 추가합니다. 이렇게 만든 새로운 List를 myList3에 저장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#7은 #6에서 본 List 문법인 "...List명"에 추가 기능을 포함된 문법입니다. ?의 의미는 해당 List가 비어 있지 않으면, #6과 동일하게 처리하지만, 만약 List에 element가 없는 null 상태이면, 에러 없이 다음 단계로 넘어가서, 정수 4,5,6을 추가하겠다는 의미입니다. #6에서는 myList1이 null인 경우, 에러가 발생하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#8은 #7의 문법으로 새로운 리스트의 앞을 채운후, 새로운 문법을 통해서 후반부를 채우게 됩니다. 새로운 문법이 if(myList2.length != 0) ...?myList2로 되어 있는데, 특이해 보이지만, List 안을 채울때에도 if 조건문의 사용이 가능합니다. 이 경우는 myList2의 길이가 0이 아니면, myList2의 내용을 후반부에 추가한다는 내용입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#9는 for 구문이 List와 같이 복수의 데이타를 저장하는 데이타 타입과 쓰일때 용이한 for-in 문법을 보여줍니다. 의미는 단순합니다. myList5안에 있는 아이템을 반복문이 수행될때마다 하나씩 꺼내서, item에 저장한다는 의미입니다. 일반적으로 for 구문을 사용하면, 임시 변수를 둬서 처음부터 끝까지 인덱스를 매기면서 수행하지만, for-in 문법을 사용하면, 자동으로 element를 하나씩 꺼내기 때문에 인덱스를 사용하다가 실수로 List에 속하지 않은 데이타에 접근할수 있는 에러를 방지합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#10은 #8처럼 List를 처음 만드는 시점에서 if 구문처럼 for 반복문도 사용이 가능한 것을 보여주는 예제입니다. 수행 결과를 보면 알겠지만, 맨 처음 "#0"의 문자열을 저장한 후, 이후 숫자가 바뀐 문자열을 하나 하나 List의 끝에 추가하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Understanding of List Class Features</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>List에 대해서 간단히 알아보았습니다. 이번에는 List 클래스 내부의 멤버 데이타와 멤버 메소드 등에 대해서 알아보겠습니다. 보다 구체적인 내용은 Dart 공식 홈페이지를 참조하시기 바랍니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/List-class.html">참조</a>]. 아래의 darttutorial-15-02.dart 예제 프로그램을 통해서 좀 더 List에 대해서 알아보겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-15-02.dart
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/List-class.html 

// Print the type of object
String getObjectType(var para) {
  if(para is List<int>) {
    return ("_List<int>_");
  } else if(para is List<dynamic>) {
    return ("_List<dynamic>_");
  } else {
    return ("_Unknown_");
  }
}

void main() {
  // #1 List sample
  List<int> myList1 = [1, 2, 3];
  print("#1 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #2 List properties
  myList1 = [1, 2, 3];
  print("#2 " + "${myList1.first} :: ${myList1[1]} :: ${myList1.last} :: ${myList1.length}");

  // #3 List manipulation using property
  myList1.length = 0;
  print("#3 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #4 add() method
  myList1.add(4);
  print("#4 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");  

  // #5 addAll() method
  myList1.addAll([5, 6, 7]);
  print("#5 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");  

  // #6 clear() method
  myList1.clear();
  print("#6 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");    

  // #7 indexOf() method
  var myList2 = ["C++", "Dart", "Python"];
  print("#7 " + myList2.indexOf("Dart").toString());

  // #8 insert() method
  myList2.insert(1, "Go");
  print("#8 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}");    

  // #9 sort() method (by length)
  myList2.sort((a,b) => a.length.compareTo(b.length));
  print("#9 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}"); 

  // #10 sort() method (by alphabet sequence)
  myList2.sort((a,b) => a.compareTo(b));
  print("#10 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}"); 
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>먼저 darttutorial-15-02.dart 프로그램의 수행결과는 다음과 같습니다. 소스 프로그램을 눈으로 살펴보면서 결과를 미리 예측하고, 실제 수행 결과와 함께 비교해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":455} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-31-오후-1.06.18.png" alt="" class="wp-image-455"/><figcaption>[그림 2] darttutorial-15-02.dart 수행 결과</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>darttutorial-15-02.dart의 #1은 darttutorial-15-12.dart에서 이미 설명한 것 처럼, generic 형태로 int 데이타 타입을 복수개 가지는 myList1을 만든 겁니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#2는 List 클래스의 property인 first, last를 통해서 List 안의 첫번째와 마지막 element의 내용을 확인하는 문법입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#3는 property인 length를 0으로 하는 것인데, 이렇게 하면, List가 가지고 있는 모든 데이타를 제거하라는 의미입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#4는 add() 메소드 입니다. 이는 현재 List의 마지막 끝에 입력 파라메타로 주어진 element를 추가합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#5는 addAll() 메소드로서, 주어진 입력 파라메타인 List의 element 들을 꺼내서, 주어진 List의 끝에 하나 하나 추가합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#6는 clear() 메소드로서, List의 모든 element를 삭제합니다. 따라서 앞서의 property인 length를 0으로 하는 것과 같은 내용입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#7에서는 문자열을 가지고 있는 List인 myList2를 만들었습니다. myList2.indexOf("Dart").toString()는 왼쪽부터 오른쪽으로 이해를 하면됩니다. 먼저, myList2에서 "Dart" 문자열이 몇번째에 들어가 있는지 인덱스 값을 확인합니다. 그러면 정수 1이 나옵니다. 그러면 1.toString()과 같은 의미로 다시 이어지는데, 정수 1을 문자열로 만든 것입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#8은 insert()로서 첫번째 입력파라메타는 List에서의 element의 위치입니다. 그리고 이 위치에 두번째 파라메타를 삽입하는 문법입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#9는 순서대로 정렬을 수행하는 sort() 메소드 입니다. List 자체를 주어진 순서에 맞도록 바꾸는 작업을 합니다. sort 메소드는 입력 파라메타로 어떻게 정렬을 할건지에 대한 조건을 비교 함수 하나를 주어야 합니다. 지금은 anonymous 함수로 (a,b) =&gt; a.length.compareTo(b.length)가 주어져 있는 것을 볼수 있습니다. 이 함수는 입력 파라메타 두개를 받습니다. 그리고 두 입력 파라메타의 길이를 비교합니다. 결국 지금의 sort는 짧은 문자열에서 긴 문자열로 List 안의 단어들을 정렬해 줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>#10은 다시 한번 정렬을 하는데, 이번에 비교 문법은 (a,b) =&gt; a.compareTo(b)로써, 가장 기본적인 정렬입니다. 즉, 크기에 따라서 정렬을 해줍니다. 문자열의 경우는 ㄱㄴㄷ, abc에 따라서 뒤로 갈수록 큰 것으로 간주합니다. 그리고 abc와 abcd처럼 앞이 같고, 뒤에 차이가 있으면, 더 긴 문자열이 큰 값으로 간주됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>List 클래스 안에는 설명한 것보다 더 많고 다양한 기능이 포함되어 있습니다. 반드시 Dart 언어 홈페이지의 List 클래스 설명 내용을 확인해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이 글에서는 아마도 가장 많이 사용되는 데이타 타입 중 하나인 List에 대해서 알아 보았습니다. 일반 변수를 만들듯이 type inference 기능을 통해서 List를 만들수도 있고, 구체적으로 다룰 데이타 타입을 지정하는 generic 방법도 배웠습니다. 그리고 멤버 property와 method 들에 대해서도 배웠습니다. List는 아주 요긴하게 사용하는 데이타 타입이니, 활용법을 잘 이해해서 사용하기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
