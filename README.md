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
* Coming soon ;)

## Usage
Just call next line from anywhere and RVCManager will animate the change of ```UIApplication.shared.keyWindow.rootViewController```

```
RootViewControllerManager.shared.change(to: newViewController, withAnimation: .fade, animationDuration: 0.5)
```

## TODO
- [ ] Setup ```pod```
- [ ] Improve example project
