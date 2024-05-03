// 서울거래에서 js 코드 분석
// 클래스 정의
class CustomValuationRenderer { 
    constructor(props) {  // 생성자 메서드 정의 -> 객체 초기화, 매개변수: props
        const el = document.createElement('p'); // 요소 생성
        this.el = el; // el 인스턴스에 요소 할당..?
        this.render(props); // 렌더 메서드 호출해서 초기 렌더링
    }

    getElement() { // DOM요소 반환 메서드 정의
        return this.el;
    }

    render(props) { // DOM 렌더링 할 render 메서드 정의
        const { value } = props; // DOM에 표시될 props 객체 추출하기
        const { el } = this; // 위에서 생성한 요소 p에다가
        if (value) {
            el.textContent = util.getKorAmount(value) + '원'; // textContent 접근자 프로퍼티를 활용해 value있으면 화면에 표시
        } else {
            el.textContent = '-';
        }
    }
}
