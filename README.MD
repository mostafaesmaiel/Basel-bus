//shields
//Features
//releases
//note
//
![Basel Bus: IOS Conichi Code Challenge for mostafa esmaiel](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/BaselBus-branding.png)

[![Packagist](https://img.shields.io/badge/Architecture-MVVMC-orange.svg)]()
[![Packagist](https://img.shields.io/badge/Functionality-95%25-green.svg)]()
[![Packagist](https://img.shields.io/badge/UI-80%25-yellow.svg)]()
[![Packagist](https://img.shields.io/badge/Concurrency-Supported-orange.svg)]()
[![Packagist](https://img.shields.io/badge/Tested-40%25-gray.svg)]()

## Road Map 
- [x] [Product Research](#product-research)
- [x] Product Design and concept 
- [x] [MVVMC Design Architecture](#mvvmc-architecture)
- [x] Concurrency Requests.  
- [x] Concurrency Test.  
- [x] Requested Task release.
- [X] UI Development.
- [x] Tests 40% Coverage.
- [x] GitFlow support -> (master, develop, release, hotfix, features).
- [ ] Conichi Splash Screen Animated. 
- [ ] UI Edits ~> like product [Design](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/LiveBusView.jpg).
- [ ] UI Integration. 
- [ ] Tests 90% Coverage. 
- [ ] Search & Save Station Features. 
- [ ] from delegates to binding. 
- [ ] Code refactory. 

## Product Research
> A brand is worthless if it doesn't **Connect** with the right audiences in a **relevant** way.
> A brand is worthless if it doesn't **Connect** with the right audiences in a **relevant** way.

I think i did very well in this research. The main coloring is coming from this [image](http://www.michaeltaylor.ca/bus-ch/basel/basel-828-mt.jpg) where you can obviously see two things :

1- The **green color** is the main color for all busses in Basel and that's why I choose green color with exact hex degree for the bus. To give the rider the **same experience** while using the app. 

2- The **curvy design** for the bus gives you the **comfort** feeling. Tried to not use any edges with the famous curvy font family **(Lato)**. Also implemented a **curvy navigation** bar so you can get the **same experience**. 

* Screens: [1](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/FirstScreen.jpg), [2](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/LiveBusView.jpg) , [3](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/LiveBusView.jpg) 

## MVVMC Architecture
who didn't suffer from **Massive View Controller** while developing in Swift, the cuppling between the views and the view controller push you to the insanity. that's why when i have started this project i was always thinking about how to avoid this problem. I came across **viper** before which is good in big projects and awesome in seperation of concerns but at the end of the day i felt it's really over enginerred. That's why i have used the famous **MVVM with Coordinators** in my archtecture. Which i found really clean and resulable. Supported with **Conncurrent operations**. With Protocol Oriented Programming i felt really powerfull and happy with my code. 

##### Binding Support : 
When you hear MVVM you will always reactive development with (Reactive Extensions RXSwift) or reactive cocoa come to your mind. But i have insisted to use the old school delegates for this reasons :
* **Code Challenge** to show that i can use delegats, protocols is something that i wanted to do. 
* I the **3rd** release from the app will binding that i have developed without any libraries. 

