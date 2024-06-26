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
- Lists
    -  List를 사용하는 법
        ``` 
        void main() {
            List num = [1, 2, 3];
            var num = [1, 2, 3;
        }
        ```
    - List는 collection if를 사용할 수 있다.
        - List를 만들 때, if를 통해 true 또는 flase를 조건으로 만들 수 있다.
            ```
                void main() {
                    var condition = true;
                    var list = [
                        1, 
                        2, 
                        3,
                        if (condition) 4 // condition이 true라면 4를 입력
                        ];
                }
            ```
## 2.2
- String Interpolation
    - 변수 사용하는 방법
    - 달러 기호를 붙이고 사용할 변수를 적어주면 된다.
    - 만약 무언가를 계산하고 싶다면 ${ } 형태로 적어주면 된다.
        ```
            void main(){
                var name = "정현서";
                var age = 10;
                va greeting = "hello $name, I'm ${age + 5}";
            }
        ```

## 2.3
- Collection For
    - Dart는 조건문(if) 및 반복(for)을 사용하여 컬렉션을 구축하는 데 사용할 수 있는 컬렉션 `if` 및 컬렉션 `for`도 제공합니다.
        ```
            void main() {
                var oldSPAM = ["정현서", "국제윤"];
                var newSPAM = [
                    "안요한",
                    "최준명",
                    for (var friend in oldSPAM) "❤️ $friend"
                ];
                print(newSPAM); // [안요한, 최준명, ❤️ 정현서, ❤️ 국제윤]
            }
        ```


## 2.4
- Maps
    - 일반적으로 맵은 key와 value를 연결하는 객체입니다. 
    - 키와 값 모두 모든 유형의 객체가 될 수 있습니다. 
    - 각 키는 한 번만 발생하지만 동일한 값을 여러 번 사용할 수 있습니다.
        ```
            var gifts = {
                // Key: Value
                'first': '정현서',
                'second': '국제윤',
                'fifth': '안요한'
            };
            
            // Map 생성자를 사용하여 동일한 객체를 만들 수 있습니다.
            var gifts2 = Map();
            gifts2['first'] = '정현서';
            gifts2['second'] = '국제윤';
            gifts2['fifth'] = '안요한';
        ```

## 2.5
- Set
    - Set에 속한 모든 아이템들이 유니크해야될 때 사용한다.
    - 유니크할 필요가 없다면 List를 사용하면 된다.
        ```
            var SPMA = {'정현서', 국제윤', '안요한' };
        ```
</details>

<details>
<summary>3. FUNCTIONS</summary>

## 3.0
- Defining a Function
    - Dart는 진정한 객체 지향 언어 => 함수도 객체이며 타입은 Function
    - 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
        ```
            String saySPAMmenber(String name) => "Hello ${name} nice to meet you.";

            void main() {
                print(saySPAMmenber("안요한"));
            }
        ```

## 3.1
- Named parameters
    - Named parameters는 명시적으로 required로 표시되지 않는 한 선택 사항입니다. 
    - 기본값을 주지 않거나 Named parameters를 필수로 표시하지 않으면 해당 유형은 기본값이 null이 됨
    - 위에서 말한듯이 null값이 되므로 null을 허용해야 합니다.
        ```
            String saySPAM({required String name, required int age, required String school}) {
                return "${name} / ${age} / ${school}";
            }
            void main() {
                print(saySPAM(name: "정현서", age: 19, school: "서울로봇고"));
            }
        ```

## 3.2
- Recap
    - 요약하는 파트이
    - 걑아서 빼버림

## 3.3
- Optional Positional Parameters
    - Dart에서는 대괄호 []를 사용해 선택적 위치 매개변수(Optional Positional Parameters)를 정의가 가능</br>
    -> 무슨 쌉소리냐면 null값을 명시적으로 할당하는가? 안하는가?이다.
    - 선택적 위치 매개변수를 사용하면 함수 호출 시 매개변수 생략이 가능하다.
        ```
            void greet(String name, [String greeting = 'Hello', String punctuation = '.']) {
                print('$greeting, $name$punctuation');
            }
            
            void main() {
                greet('Alice');
                greet('Bob', 'Hi'); 
                greet('Charlie', 'Good morning', '!');
            }
        ```

## 3.4
- QQ Operator
    - QQ Operator(Null-Aware Operator)는 Dart 언어에서 null 값 처리를 간편하게 하기 위해 도입된 연산자
    - QQ Operator는 Dart의 세 가지 주요 Null-Aware Operator의 별칭
    - 아래와 같이 세가지 기능이 있다.
        - Null-aware assignment operator (??=)
        - Null-aware access operator (?.)
        - Null-coalescing operator (??)
        ```
            class SPAM {
                String name;
                SPAM(this.name);
            }
            
            void main() {
                var a;
                a ??= 5; // a가 null이므로 5를 할당
                print(a); // 출력: 5
                
                var b = 10;
                b ??= 20; // b는 null이 아니므로 값이 변경되지 않음
                print(b); // 출력: 10
                
                SPAM spam1 = SPAM('John');
                print(spam1?.name); // 출력: John
                
                SPAM? spam2; // nullable로 선언
                print(spam2?.name); // 출력: null, 오류가 발생하지 않음
                
                var name;
                print(name ?? 'Guest'); // 출력: Guest
                
                name = '정현서';
                print(name ?? 'Guest'); // 출력: 정현서
            } 
        ```

## 3.5
- Typedef 
    - typedef는 함수 타입을 정의할 때 사용되는 키워드
    - 특정 함수의 타입을 명시적으로 정의하고, 이를 변수에 할당하거나 함수의 매개변수 타입으로 사용 가능.
    - 주로 콜백 함수를 정의할 때 유용하게 활용됩니다.
        ```
            typedef ListOfInts = List;
            
            ListOfInts reverseListOfNumbers(ListOfInts list) {
                var reversed = list.reversed;
                return reversed.toList();
            }
        ```
</details>


<details>
<summary>4. CLASSES</summary>

## 4.0
- Your First Dart Class
    - dart에서 property를 선언할 때는 타입을 사용해서 정의한다.
    - class method에서는 `this`를 사용하지 않는다.
    ```
       class Player{
        final var a = "정현서"
       }

       void sayName{
        print("Hi, my name is $name")
       } 
    ```

## 4.1
- Constructors
    - constructor(생성자) 함수는 클래스의 이름과 같아야 한다.
        ```
            class Person {
                String name;

                //생성자 정의
                Person(this.name);
            }
        ```
## 4.2
- Named Constructor Parameters
    - 클래스가 많아짐 => 생성자도 많아짐
    - 위와 같은 비효율적인 행위를 줄위기 위하여 사용한다,.
    - 기본 생성자의 매개변수들을 중괄호 {}로 묶어서 정의하는 방식으로, 각 매개변수가 해당 클래스의 인스턴스를 생성할 때 어떤 역할을 하는지 명확히 할 수 있게 해줌 => 쌈@뽕하게 정리가능
    - 이는 매개변수의 순서를 신경 쓰지 않고 인스턴스를 생성할 수 있도록 도와줌
        ```
            class Player {
                final String name;

                Player({required this.name});
                
                void sayHello() {
                    print("Hi, my name is $name.");
                }
            }
            
            void main() {
                // Player 인스턴스 생성
                var player = Player(
                    name: "nudge",
                );
                
                // Player의 sayHello 메서드 호출
                player.sayHello();
            }
        ```

## 4.3
- Named Constructors
    - Named Constructors(명명된 생성자)는 클래스의 인스턴스를 생성하는 여러 가지 방법을 제공하기 위해 사용된다. 
    - Named Constructors는 클래스 이름 뒤에 마침표와 생성자의 이름을 붙여 정의함
    - 이를 통해 생성자에 특정한 이름을 부여하고, 다양한 초기화 로직을 구현 매우 쌈@뽕하게 됨.
        ```
            class Player {
                final String name;
                final String team;
                
                Player({required this.name, this.team = 'unknown'});
                
                Player.createRed({required this.name}) : team = 'red';
                
                Player.createBlue({required this.name}) : team = 'blue';
                
                void sayHello() {
                    print("Hi, my name is $name and I am in team $team.");
                }
            }
            
            void main() {
                var defaultPlayer = Player(name: 'Alice');
                
                defaultPlayer.sayHello();
                
                var redPlayer = Player.createRed(name: 'Bob');
                
                redPlayer.sayHello();
                
                var bluePlayer = Player.createBlue(name: 'Charlie');
                
                bluePlayer.sayHello();
            } 
        ```

## 4.4
- Recap
    - 요약은 쌈@뽕하게 건너뛰도록 함

## 4.5
- Cascade Notation
    - 
## 4.6
- Enums
    - Enums는 관련된 상수 집합을 정의하는 데 사용한다. 
    - 각 상수는 고유한 값이 존재하는데 Dart에서 `Enums`를 조지면 => 코드를 더 읽기 쉽고 유지보수하기 쉽게 만들어줌.
        ```
            enum Team {
                red,
                blue,
            }
            
            class Player {
                String name;
                int age;
                Team team;
                
                Player({
                    required this.name,
                    required this.age,
                    required this.team,
                });
            }
            
            void main() {
                var jisoung = Player(name: "jisoung", age: 17, team: Team.red);
                
                var sushi = jisoung
                ..name = "sushi"
                ..age = 12
                ..team = Team.blue;
                
                print("Player 1: ${jisoung.name}, Age: ${jisoung.age}, Team: ${jisoung.team}");
                print("Player 2: ${sushi.name}, Age: ${sushi.age}, Team: ${sushi.team}");
            }
        ```
## 4.7
- Abstract Classes
    - Abstract Classes는 인스턴스를 만들 수 없는 클래스
    - 다른 클래스가 이를 상속받아 구현해야 하는 메서드를 정의할 때 사용함. 
    - 이를 통해 공통 인터페이스나 기능을 정의할 수 있습니다.


## 4.8
- Inheritance (상속)
    - Inheritance는 클래스가 다른 클래스의 속성과 메서드를 상속받아 재사용하는 것이다.
    - JAVA의 상속과 비슷함(똑같은가?)
    - 이를 통해 코드를 더 효율적으로 작성하고 유지보수가 가능함
        ```
            class Animal {
                void makeSound() {
                    print("Animal sound");
                }
            }
            
            class Dog extends Animal {
                @override
                void makeSound() {
                    print("Bark");
                }
            }
            
            void main() {
                var dog = Dog();
                dog.makeSound(); // Output: Bark
            }
        ```
## 4.9
- Mixins
    - Mixins는 여러 클래스에서 공통적으로 사용할 수 있는 메서드와 속성을 정의하는 데 사용한다.
    - 클래스에 기능을 추가할 때 사용되며, 다중 상속의 효과를 제공한다.(살짝 고아원 원장님)
        ```
            mixin CanRun {
                void run() {
                    print("Running");
                }
            }
            
            class Animal {
                void makeSound() {
                    print("Animal sound");
                }
            }
            
            class Dog extends Animal with CanRun {
                @override
                void makeSound() {
                    print("Bark");
                }
            }
            
            void main() {
                var dog = Dog();
                dog.makeSound(); // Output: Bark
                dog.run(); // Output: Running
            }
        ```
## 4.10
- 끝
    - 강의가 끝났다.
    - ㅈㄴ 쌈@뽕하다.
    - tlqkf 이제는 flutter 강의 들어야 한다... 
</details>
