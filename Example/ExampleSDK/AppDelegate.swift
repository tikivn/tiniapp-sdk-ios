//
//  AppDelegate.swift
//  ExampleSDK
//
//  Created by Han Han on 10/10/22.
//

import UIKit
import TiniAppSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window:UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let config = TiniAppConfiguration()
        config.env = .uat
        config.clientId = "76e643c9-5239-444f-a3e0-c777fd0cec09"
        config.partnerCode = "app-demo"
        TiniAppSDK.config(with:config)
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        TiniAppApplicationDelegate.shared.application(app, open: url, options: options)
        
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        TiniAppApplicationDelegate.shared.application(application, open: url, sourceApplication: sourceApplication, annotation: annotation)
    }

}

extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
