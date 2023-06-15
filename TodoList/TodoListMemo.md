

## 알게된 내용

#### 1. @state 

- View에서만 사용함
- class 에서 @state처럼 사용가능한 프로퍼티 @Published

#### 2. List에서 model을 구분하기위해서는 데이터가 Identifiable를 채택해야함

#### 4. @EnvironmentObject를 사용하면 모든 하위뷰에서 해당 프로퍼티를 공유

- .environmentObject로 해당앱의 모든 하의 뷰에서 EnvironmentObject로 관찰가능함
- viewModel을 그렇게 공유했음

#### 5. @stateObject로 ViewModel 최초 선언

#### 6. @Environment(.presentationMode)로 뷰가 dismiss되도록 구현함

#### 7. asset에서 color set 만들어줌

