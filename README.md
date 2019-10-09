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
* Coming soon :)

## Usage
Just call next line from anywhere and RVCManager will animate the change of root view controller

```
RootViewControllerManager.shared.change(to: newViewController, withAnimation: .fade, animationDuration: 0.5)
```

## TODO
- [X] Setup ```pod```
- [ ] Setup Swift Package Manager
- [ ] Improve example project
- [ ] Add tests
