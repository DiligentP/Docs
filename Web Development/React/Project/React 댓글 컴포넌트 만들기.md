
**댓글을 작성한 작성자의 이미지, 작성자의 이름, 댓글 내용을 출력하는 컴포넌트를 제작**

![](Pasted%20image%2020230611173927.png)

**comment 폴더를 생성하고, Comment.js 파일을 추가**

![](Pasted%20image%2020230611173941.png)


`Comment.js
```jsx
function Comment (props) {
    return (
        <div>
            <h1>Comment Components</h1>
        </div>
    );
}
export default Comment;
```

**comment 폴더에 CommentList.js 파일을 추가**

`CommentList.js`
```jsx
import Comment from "./Comment";

function CommentList(props) {
    return (
        <>
            <Comment />
            <Comment />
        </>
    );
}
export default CommentList;
```

**App.js 파일에 CommentList 컴포넌트를 추가**

`App.js`
```jsx
import './App.css';
import CommentList from "./comment/CommentList";

function App() {

    return (
        <>
            <CommentList />
        </>
    );
}

export default App;
```

![](Pasted%20image%2020230611174831.png)

https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png

**Comment 컴포넌트에 작성한 사람의 이미지, 이름, 댓글 내용을 보여주는 코드를 추가**

```jsx
function Comment (props) {
    return (
        <div>
            {/* 작성한 사람의 이미지 */}
            <div>
                <img src="https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png" />
            </div>

            {/* 작성한 사람의 이름과 댓글 내용 */}
            <div>
                <span>Author Name</span>
                <span>The content of the comments</span>
            </div>
        </div>
    );
}
export default Comment;
```

**Comment 컴포넌트에 스타일을 추가**

```jsx
function Comment (props) {
    const styles = {
        wrapper: {
            display: 'flex',
            flexDirection: 'row',
            border: '1px solid gray',
            borderRadius: 16,
            padding: 8,
            margin: 8
        },
        image: {
            width: 50,
            hegith: 50,
            borderRadius: 25
        },
        contentContainer: {
            marginLeft: 10,
            display: 'flex',
            flexDirection: 'column'
        },
        nameText: {
            color: 'black',
            fontSize: 16,
            fontWeight: 'bold',
            marginBottom: 5
        },
        commentText: {
            color: 'black',
            fontSize: 16
        }
    };
    return (
        <div style={styles.wrapper}>
            {/* 작성한 사람의 이미지 */}
            <div>
                <img style={styles.image} src="https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png" />
            </div>

            {/* 작성한 사람의 이름과 댓글 내용 */}
            <div style={styles.contentContainer}>
                <span style={styles.nameText}>Author Name</span>
                <span style={styles.commentText}>The content of the comments</span>
            </div>
        </div>
    );
}
export default Comment;
```

**Comment 컴포넌트에 props 변수로 전달된 값을 출력하도록 변경**

```jsx
 {/* 작성한 사람의 이름과 댓글 내용 */}
<div style={styles.contentContainer}>
	<span style={styles.nameText}>{props.name}</span>
	<span style={styles.commentText}>{props.comment}</span>
</div>
```

**CommentList 컴포넌트에 props 값을 설정해서 Comment 컴포넌트를 호출하도록 수정**

```jsx
import Comment from "./Comment";

function CommentList(props) {
    return (
        <>
            <Comment name="홍길동" comment="안녕하세요. 홍길동입니다." />
            <Comment name="고길동" comment="둘리가 싫어요" />
        </>
    );
}
export default CommentList;
```

![](Pasted%20image%2020230611175751.png)

**CommentList 파일에 댓글 데이터를 추가**

```jsx
import Comment from "./Comment";

// 댓글 데이터 ==> 나중에는 ajax 통신을 통해서 서버로부터 가져와야 함
const comments = [
    { name: "홍길동", comment: "안녕하세요. 홍길동입니다." },
    { name: "고길동", comment: "돌리가 싫어요." },
    { name: "신길동", comment: "리액트 참 재밌죠?" }
];

function CommentList(props) {
    return (
        <>
            <Comment name="홍길동" comment="안녕하세요. 홍길동입니다." />
            <Comment name="고길동" comment="둘리가 싫어요" />
        </>
    );
}
export default CommentList;
```

**CommentList 파일에 댓글 데이터를 파싱해서 출력하도록 수정**

```jsx
import Comment from "./Comment";

// 댓글 데이터 ==> 나중에는 ajax 통신을 통해서 서버로부터 가져와야 함
const comments = [
    { name: "홍길동", comment: "안녕하세요. 홍길동입니다." },
    { name: "고길동", comment: "돌리가 싫어요." },
    { name: "신길동", comment: "리액트 참 재밌죠?" }
];

function CommentList(props) {
    return (
        <>
            { 
                comments.map(cmt => <Comment name={cmt.name} comment={cmt.comment} />)
            }
        </>
    );
}
export default CommentList;

```

![](Pasted%20image%2020230611181224.png)


**key가 누락되었을 때 경고**

![](Pasted%20image%2020230611181308.png)

```jsx
import Comment from "./Comment";

// 댓글 데이터 ==> 나중에는 ajax 통신을 통해서 서버로부터 가져와야 함
const comments = [
    { name: "홍길동", comment: "안녕하세요. 홍길동입니다." },
    { name: "고길동", comment: "돌리가 싫어요." },
    { name: "신길동", comment: "리액트 참 재밌죠?" },
    { name: "홍길동", comment: "호부호형이 꿈입니다." },
];

function CommentList(props) {
    return (
        <>
            {
                comments.filter(c => c.name === '홍길동').map((c, index) => <Comment key={index} name={c.name} comment={c.comment}/>)
            }
        </>
    );
}
export default CommentList;
```

![](Pasted%20image%2020230611181332.png)

**글쓴이 별 이미지를 다르게 출력하도록 수정**

```
https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-business-men-icon-png-image_4186858.jpg

https://png.pngtree.com/png-clipart/20190630/original/pngtree-vector-avatar-icon-png-image_4162757.jpg

https://png.pngtree.com/png-clipart/20190520/original/pngtree-male-worker-icon-graphic-png-image_3668949.jpg
```

`Comment.js`
```jsx
...
{/* 작성한 사람의 이미지 */}
<div>
	<img style={styles.image} src={props.image} />
</div>
```

`CommentList.js`
```jsx
import Comment from "./Comment";

// 댓글 데이터 ==> 나중에는 ajax 통신을 통해서 서버로부터 가져와야 함
const comments = [
    { name: "홍길동", comment: "안녕하세요. 홍길동입니다.", image: "https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-business-men-icon-png-image_4186858.jpg" },
    { name: "고길동", comment: "돌리가 싫어요.", image: "https://png.pngtree.com/png-clipart/20190630/original/pngtree-vector-avatar-icon-png-image_4162757.jpg" },
    { name: "신길동", comment: "리액트 참 재밌죠?", image: "https://png.pngtree.com/png-clipart/20190520/original/pngtree-male-worker-icon-graphic-png-image_3668949.jpg" },
    { name: "홍길동", comment: "호부호형이 꿈입니다.", image: "https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-business-men-icon-png-image_4186858.jpg" },
];


function CommentList(props) {
    return (
        <>
            <h1>홍길동만 출력</h1>
            {
                comments.filter(c => c.name === '홍길동').map((c, index) => <Comment key={index} name={c.name} comment={c.comment} image={c.image} />)
            }

            <h1>전체 출력</h1>
            {
                comments.map((c, index) => <Comment key={index} name={c.name} comment={c.comment} image={c.image} />)
            }
        </>
    );
}
export default CommentList;

```

![](Pasted%20image%2020230611181947.png)

