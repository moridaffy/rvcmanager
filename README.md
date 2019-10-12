<h1 align="center">
  <br>
  RVCManager
  <br>
</h1>

<h4 align="center">RootViewControllerManager</h4>
<h5 align="center">Handy class for easy animating root view controller change</h5>

## Demo
![alt tag](https://raw.githubusercontent.com/moridaffy/rvcmanager/master/demovideo.gif)

## How to install?
### Manually
* Just copy the file ```RootViewControllerManager.swift``` into your project

### CocoaPods
* Add the following line to your existing ```Podfile``` (or create a new one) and run ```pod install```
```
pod 'RVCManager', :git => 'https://github.com/moridaffy/rvcmanager'
```

### Swift Package Manager
* Enter following URL as package repository URL: ```https://github.com/moridaffy/rvcmanager/```
* Use `master` branch

## Usage
Here's the example of how you can use RVCManager to quickly change your UIWindow's root view controller from anywhere using a single line of code:

```swift
import RVCManager

class ViewController: UIViewController {

  private func logoutButtonTapped() {
    guard let authViewController = UIStoryboard(name: "Auth", bundle: nil).instantiateInitialViewController() as? AuthViewController else { return }
    RootViewControllerManager.shared.change(to: authViewController, withAnimation: .verticalUp, animationDuration: 0.5)
  }

}
```

## TODO
- [X] Setup ```pod```
- [X] Setup Swift Package Manager
- [ ] Improve example project
- [ ] Add tests
