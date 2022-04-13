//
//  Launch.swift
//  Localizations
//
//  Created by nayhan on 13.04.2022.
//

import UIKit
import TinyConstraints
import LanguageManager_iOS

class Launch: UIViewController {
    
    lazy var logo : UILabel = {
        let label = UILabel()
        label.text =  String.localize("app_language")
        label.font =  UIFont.systemFont(ofSize: 24)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        
    }
    func setLayout(){
        view.backgroundColor = .black
        
        view.addSubview(logo)
        logo.centerInSuperview()
        logo.width(view.frame.width)
        logo.height(160)
        
    }
    
}
extension Launch  {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if navigationController != nil{
            navigationController?.setNavigationBarHidden(true, animated: true)
        }
    }
}
