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
- [x] [Concurrency Requests](#concurrency-why) 
- [x] Concurrency Test 
- [x] Requested Task release
- [X] UI Development
- [x] Tests 40% Coverage
- [x] GitFlow support -> (master, develop, release, hotfix, features)
- [ ] Code refectory
- [ ] Hotfix release
- [X] Conichi Splash Screen Animated
- [ ] UI Edits ~> like product [Design](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/LiveBusView.jpg)
- [ ] UI Integration
- [ ] 2nd release
- [ ] Tests 90% Coverage
- [ ] Search & Save Station Features
- [ ] from delegates to binding 
- [ ] Code refectory

## Product Research
> A brand is worthless if it doesn't **connect** with the right audiences in a **relevant** way.

I think I did very well in this research. The main identity is coming from an image for busses in Basel([image](http://www.michaeltaylor.ca/bus-ch/basel/basel-828-mt.jpg)) where you can obviously see two things :

1- The **green color** is the main color for all busses in Basel and that's why I choose a green color with exact hex degree for the bus. To give the rider the **same experience** while using the app. 

2- The **curvy design** for the bus gives you the **comfort** feeling. Tried to not use any edges with the famous curvy font family **(Lato)**. Also implemented a **curvy navigation** bar so you can get the **same experience**. 

* Screens: [1](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/FirstScreen.jpg), [2](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/LiveBusView.jpg) , [3](https://github.com/mostafaesmaiel/Basel-bus/blob/master/Design/SplashScreen.jpg) 

## MVVMC Architecture
who didn't suffer from **Massive View Controller** when developing Swift applications, the coupling between the views and the view controller push you to the insanity and the infinity of changes that you will need to have to just support TV OS for different view. that's why when I have started this project I was always thinking about how to avoid this problem.I have came across **clean Swift** which is really good documented and also **viper** before which is good in big projects and awesome in separation of concerns but at the end of the day I felt it's really over engineered.  That's why I have used the famous **MVVM with Coordinators** in my architecture. Which I found really clean and reusable. Supported with **Concurrent operations**. With Protocol Oriented Programming I felt really powerful and happy with my code.

Please Note: 
* The huge separation of concerns in the code with protocol oriented programming I can actually use anything in the implementation. 
* The **reuseability** of **ViewModel** and **Model** objects. 
* getting the real data from **Model** with Async support gives me the power of easily change the data source either from network, Coredata or anything else. 
* **Test-ability**


### Binding Support : 
When you hear MVVM you will always see reactive development with (Reactive Extensions RXSwift) or reactive cocoa come to your mind. But I have insisted to use the old school delegates for this reasons :
* **Code Challenge** to show that I can use delegats, protocols is something that I wanted to do. 
* In the **3rd** release from the app i will **use binding** that I have developed without any libraries. 


## Concurrency, why?
I have used **Operations** in my network requests and main operations request in the app instead of simply using **Dispatch group** for different reasons : 

* More powerefull for future features specially when it comes to manage the **dependencies.**
* Send the right request at the right time leveraging power of **canceling** the request anytime i want.

I have used 3 operations

* `StationsFetchOperation` -> Getting the Stations and organizing the table view header. 
* `GoogleImgFetchOperation` -> Get the google image for the station using coordinates.
* `StationboardFetchOperation` -> Getting the stationboards for every station by its name. 

I have combined the GoogleImg Fetch operation and stationboard Fetch Operation in `StationProviders` class and I have used a reference for in a set of StationProviders so I can cancel the ongoing operations that I don't want ßto complete. 

```Swift
    var stationProviders = Set<StationProvider>()
```
> Using operations enhanced the performance for the application to the Max! As I'm Only Requesting the details for the current Station outside the main thread with different Qos helped in increasing the application performance in general. 

#### Dependency Injection: 
Note also that i have used constructor dependency injection in all of my operations and that's helped me alot in the unit tests.

