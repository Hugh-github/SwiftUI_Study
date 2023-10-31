# SwiftUI_Study
## 인스타그램 디자인 클론 코딩

### 실행 화면
<p align="center">
    <img src="https://github.com/Hugh-github/SwiftUI_Study/assets/102569735/f04771fe-f583-4668-8608-c94a5a2aa5f2" height="330">
</p>

### 10.29
**현재 상황**
- 상단에 Tab을 이용해 볼 수 있는 컨텐츠를 변경하고 있습니다.

**해야 할 일**
- 스크롤을 통한 컨텐츠 변경

### 10.30
Scroll 가능한 Tab bar를 만드는 과정에서 2가지 접근 방법을 고민
#### TabView 사용

문제 : **VStack**을 사용하면 Tab이 잘리고 **List**를 사용하면 Content 아래가 잘린다.
<p align="center">
    <img height="330" alt="스크린샷 2023-10-31 오후 3 19 49" src="https://github.com/Hugh-github/SwiftUI_Study/assets/102569735/efedfed6-282c-4654-9c33-cba3343fa368">
    <img height="330" alt="스크린샷 2023-10-31 오후 3 18 25" src="https://github.com/Hugh-github/SwiftUI_Study/assets/102569735/002f8ffc-2b21-4c6c-860c-a561eb4c5d9f">
</p>

원인 : TabView는 SubView에 대해서 동일한 사이즈를 제공한다. List를 사용하면 Section을 활용해 Header를 고정할 수 있어 아랫부분이 잘린걸 확인할 수 있다.

#### ScrollView와 ScrollViewReader 사용
문제 : 정확한 크기를 설정하기 어렵다. 모두 같은 화면을 보여주고 있다.

<p align="center">
    <img src="https://github.com/Hugh-github/SwiftUI_Study/assets/102569735/987d543a-c4e2-476c-8a7a-276a832f96bf" height="330">
</p>

원인 : 주입받는 **@Sate selectedIndex**가 같은 값을 공유하기 때문에 다른 처리 방법이 필요하다.


### 10.31
#### UIPageViewController
SwiftUI의 TabView를 사용하는 것과 유사하다.(문제점도 유사하다.)

```swift
import UIKit
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page] // controller를 만들기 위한 View
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        pageController.dataSource = context.coordinator
        
        return pageController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        // pageViewController를 업데이트
        pageViewController.setViewControllers(
            [context.coordinator.controllers[0]], direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        var parent: PageViewController
        var controllers = [UIViewController]()


        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map { UIHostingController(rootView: $0) }
        }


        func pageViewController(
            _ pageViewController: UIPageViewController,
            viewControllerBefore viewController: UIViewController) -> UIViewController?
        {
            // 이전 ViewController 설정
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index == 0 {
                return nil
            }
            return controllers[index - 1]
        }


        func pageViewController(
            _ pageViewController: UIPageViewController,
            viewControllerAfter viewController: UIViewController) -> UIViewController?
        {
            // 이후 ViewController 설정
            guard let index = controllers.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == controllers.count {
                return nil
            }
            return controllers[index + 1]
        }
    }
}
```
#### ScrollView를 이용한 방법 업데이트
모든 컨텐츠의 높이가 가장 긴 검은색 사각형의 높이와 같다. x축으로 Scroll하면 위에 Tab이 변하지 않는다.
<p align="center">
    <img src="https://github.com/Hugh-github/SwiftUI_Study/assets/102569735/b7cca176-6442-4552-b268-163a3bf6937f" height="330">
</p>

### 결론
정확한 방법을 찾지 못했지만 가장 편하고 좋은 방법은 TabView를 사용하고 Dynamic한 Size를 설정하는 것이다

