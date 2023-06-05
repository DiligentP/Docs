테스트에서 주로 사용하는 어노테이션으로,

```java
public class MemberServiceTest {  
  
    MemberSevice memberSevice;  
  
    @BeforeEach  
    public void beforeEach() {  
        AppConfig appConfig = new AppConfig();  
        memberSevice = appConfig.memberSevice();  
    }  
  
    @Test  
    void join() {  
        // given  
        Member member = new Member(1L, "memberA", Grade.VIP);  
  
        // when  
        memberSevice.join(member);  
        Member findMember = memberSevice.findmember(1L);  
  
        // then  
        Assertions.assertThat(member).isEqualTo(findMember);  
    }  
}
```

코드가 다음과 같을 때, @BeforeEach 구문을 모든 테스트에 일괄 적용시킨다.