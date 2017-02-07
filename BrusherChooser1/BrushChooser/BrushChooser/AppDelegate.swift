//
//  AppDelegate.swift
//  BrushChooser
//
//  Created by u0669056 on 2/6/17.
//  Copyright © 2017 u0669056. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var mainView: MainView? = nil

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController =  ViewController()
        window?.makeKeyAndVisible()
        
        mainView = MainView(frame: UIScreen.main.bounds)
        window?.rootViewController?.view.addSubview(mainView!)
        
        mainView?.brushView?
        
        mainView?.slideView?.getSlider.addTarget(self, action: #selector(sliderChanged), for: .valueChanged)
        
        mainView?.endCapButt?.getRoundButton.addTarget(self, action: #selector(roundButton), for: .touchDown)
        mainView?.endCapButt?.getbuttButton.addTarget(self, action: #selector(buttButton), for: .touchDown)
        mainView?.endCapButt?.getsquareButton.addTarget(self, action: #selector(squareButton), for: .touchDown)
        
        mainView?.buttView?.getRoundButton.addTarget(self, action: #selector(roundJoinButton), for: .touchDown)
        mainView?.buttView?.getbevelButton.addTarget(self, action: #selector(bevelButton), for: .touchDown)
        mainView?.buttView?.getMiterButton.addTarget(self, action: #selector(miterButton), for: .touchDown)
        
        // Override point for customization after application launch.
        return true
    }

    func sliderChanged(){
        NSLog(String(describing: mainView?.drawerView?.lineWidth))
        NSLog(String(describing: mainView?.slideView?.getSlider.value))
        mainView?.drawerView?.lineWidth = (CGFloat((mainView?.slideView?.getSlider.value)!))
    
    }
    func roundButton()
    {
        mainView?.drawerView?.endCapState = .round
    }
    func buttButton()
    {
        mainView?.drawerView?.endCapState = .butt
    }
    func squareButton()
    {
        mainView?.drawerView?.endCapState = .square
    }
    
    func roundJoinButton()
    {
        mainView?.drawerView?.joinState = .round
    }
    func bevelButton()
    {
        mainView?.drawerView?.joinState = .bevel
    }
    func miterButton()
    {
        mainView?.drawerView?.joinState = .miter
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

