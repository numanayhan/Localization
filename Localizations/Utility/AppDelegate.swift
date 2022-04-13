//
//  AppDelegate.swift
//  Localizations
//
//  Created by nayhan on 13.04.2022.
//

import UIKit
import CoreData
import LanguageManager_iOS

var rooter:Navigation?
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Thread.sleep(forTimeInterval: 0.0)
        
        // Dil cihaza göre gelmesini isterseniz bu metotdu açın
       //  setLocalization()
        
        // Dil kendiniz belirlemek istiyorsanız set edin.
        setLanguage()
        //Navigation ile Navigation kontroller rooter olarak alır.

        setNavigation()
        
        return true
    }
    func setNavigation(){
          
        //Window UI
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //Root App
        rooter = Navigation(window: window!)
        rooter?.startApp()
        
    }
    func setLocalization(){
        //Language
        if  LanguageManager.shared.deviceLanguage == .tr {
            LanguageManager.shared.defaultLanguage = .tr
            Localizable.sharedInstance.setLanguage(languageCode: "tr")
        }else if  LanguageManager.shared.deviceLanguage == .en {
            LanguageManager.shared.defaultLanguage = .en
            Localizable.sharedInstance.setLanguage(languageCode: "en")
        }else  {
            LanguageManager.shared.defaultLanguage = .tr
            Localizable.sharedInstance.setLanguage(languageCode: "tr")
        }
        
    }
    func setLanguage(){
        // Cihazın diline göre değişir.
        // Her sayfaya LanguageManager_iOS  import ettiğinizden emin olun.
        
        Localizable.sharedInstance.setLanguage(languageCode: "tr")
        LanguageManager.shared.defaultLanguage = .tr
        
        
    }
}

