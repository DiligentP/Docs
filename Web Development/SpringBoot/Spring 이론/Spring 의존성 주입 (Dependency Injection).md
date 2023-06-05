#java #Spring #의존성주입

## 1. 생성자 주입 (Constructor Injection)
	생성자 주입(Constructor Injection)은 생성자를 통해 의존 관계를 주입하는 방법입니다.

```java
@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private MemberService memberService;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, MemberService memberService) {
        this.userRepository = userRepository;
        this.memberService = memberService;
    }
    
}
```

생성자가 1개만 있을 경우에 @Autowired를 생략해도 주입이 가능하도록 편의성을 제공있습니다.
그렇기 때문에 위의 코드는 아래와 동일한 코드가 됩니다.

```java
@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private MemberService memberService;

    public UserServiceImpl(UserRepository userRepository, MemberService memberService) {
        this.userRepository = userRepository;
        this.memberService = memberService;
    }

}
```


---
## 2. 수정자 주입(Setter Injection)
	수정자 주입은 필드 값을 변경하는 Setter를 통해서 의존 관계를 주입하는 방법이다.

```java
@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private MemberService memberService;

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    public void setMemberService(MemberService memberService) {
        this.memberService = memberService;
    }
}
```

Setter 주입은 생성자 주입과 다르게 주입받는 객체가 변경될 가능성이 있는 경우에 사용한다.
(실제로 변경이 필요한 경우는 극히 드물다.)

@Autowired로 주입할 대상이 없는 경우에는 오류가 발생한다.
위의 예제에서는 XXX 빈이 존재하지 않을 경우에 오류가 발생하는 것이다.
주입할 대상이 없어도 동작하도록 하려면 @Autowired(required = false)를 통해 설정할 수 있다.

---
## 3. 필드 주입 (Field Injection)
```java
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MemberService memberService;

}
```

필드 주입을 이용하면 코드가 간결해져서 과거에 상당히 많이 이용되었던 주입 방법이다.
하지만 필드 주입은 외부에서 접근이 불가능하다는 단점이 존재하는데,
테스트 코드의 중요성이 부각됨에 따라 필드의 객체를 수정할 수 없는 필드 주입은 거의 사용되지 않게 되었다.
또한 필드 주입은 반드시 DI 프레임워크가 존재해야 하므로 반드시 사용을 지양해야 한다.
그렇기에 애플리케이션의 실제 코드와 무관한 테스트 코드나 설정을 위해 불가피한 경우에만 이용하도록 하자.

---
## 4. 생성자 주입을 사용해야 하는 이유

1.  객체의 불변성 확보
2.  테스트 코드의 작성
3.  final 키워드 작성 및 Lombok과의 결합
4.  순환 참조 에러 방지



참고
[[Spring] 의존성 주입(Dependency Injection, DI)이란?)](https://mangkyu.tistory.com/150)
[[Spring] 다양한 의존성 주입 방법과 생성자 주입을 사용해야 하는 이유](https://mangkyu.tistory.com/125)