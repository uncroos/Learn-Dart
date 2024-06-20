# Learn-Dart
시작일 : 2024 6월 17일

<details>
<summary>1. VARIABLES</summary>

## 1.0
- 'main' 메서드가 존재해야 실행 => main 함수에서 작성한 코드가 호출되기 때문이다.
- ';'는 필수이다.(없다면 오류발생)
    ```
    void main() {
        print("Hello World");
    }
    ```

## 1.1
- 변수를 선언할 때는 `var`를 사용
- `var`는 변수의 타입을 구체화하지 않음
    - 하지만 변수를 업데이트할 시, 변수의 본래 타입과 일치해야 함
    - 변수를 선언할 때는 명시적으로 변수의 타입을 지정
    ```
    void main() {
        var SPAM = '정현서 부장';
        SPAM = 1;         //오류
        SPAM = 3.14;      //오류
        SPAM = turn ;     //오류
        SPAM = '국제윤';   //정상
    }
    ```

## 1.2 
- `dynamic` 타입인 경우, 어떤 타입으로든 지정이 가능
    ```
    void main() {
        dynamic SPAM; // 현재는 SPAM이 어떤 타입인지 모름
        if(name is String){     // SPAM이 String 타입인지 확인
  	        print('string!')
        }
    }
    ```

## 1.3
- null safety는 개발자가 null 값을 참조할 수 없도록 하는 기능
- 코드에서 null 값을 참조하면 런타임 에러가 발생
- 하지만 아래와 같이 작성이 가능
    ```dart
    {변수형}? {변수이름} = '{변수값}';
    {변수 이름} = null;
    ```

## 1.4
- `final`로 함수를 
    - js의 `const`와 비슷함
    - 초기 한 번의 설정만 가능
- `final`로 함수를 지정하면 변수를 수정할 수 없음
    ```dart
    final {값};
    final {변수형} = {값};
    ```

## 1.5
- `late`는 함수만 만들어둔 뒤, 나중에 데이터를 저장한다.
- 주로 API에 활용한다.
    ```dart
    late final (var도 가능) {변수이름};
    late final (var도 가능) {변수형} {변수이름};
    ```

## 1.6
- dart의 `const`는 js의 `const`와는 전혀 다르다.
    - `const`는 개발자가 그 값을 사전에 알고 있어야 한다.
    - `const`의 값을 사전에 모른다면 (값이 API로부터 할당되거나, 클라이언트에서 입력하는 값 등) `const`로 생성하는 것이 아닌, `var`나 `final`로 생성해야 한다.
- `const`는 `compile-time constant`를 만들어줌

## 1.7
- 지금까지 배운 내용 요약
    - `var`
        - 가장 기본적인 변수 선언문
        - 되도록이면 `var`를 사용하는 것을 권장
    - `final`
        - 재할당하지 않는 변수를 만들 때 사용
    - `dynamic`
        - `dynamic`의 변수형은 정하지 않고 사용
        - 가장 조심히 사용해야 함
        - 자주 사용하지 않는 것이 좋음
    - `const`
        - 컴파일을 할 때 개발자가 사전에 그 값을 알고 있음
        - `const`는 수정이 불가능
    - `late`
        - 나중에 변수를 초기화하기 위해 사용
</details>

<details>
<summary>2. Data Types</summary>

## 2.0
- Basic Data Types
    - 기본 데이터 타입
    - 아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
    - 이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
    - {num}은 정수와 소수 모두 될 수 있다.
        ```
            void main() {
                String name = "정현서";
                bool isPlay = true;
                int age = 19;
                double kg = 100;
                num x = 30;
                num y = 50.50;
            }
        ```
## 2.1
- 

<details>
