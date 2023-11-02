//
//  BaseViewController.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

class BaseViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Defina a navigation bar como transparente
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        // 2. Remova a linha de separação na parte inferior
        self.navigationController?.navigationBar.backgroundColor = .clear
        
        //--------------------- Changing navigation Bar infos --------------------------------
//
//        let appearanceNavigation = UINavigationBarAppearance()
//        appearanceNavigation.configureWithOpaqueBackground()
//        appearanceNavigation.backgroundColor = UIColor.clear
//        appearanceNavigation.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.defaultFont(size: 20, type: .bold)]
    
                    
//        navigationController?.navigationBar.standardAppearance = appearanceNavigation
//        navigationController?.navigationBar.scrollEdgeAppearance = self.navigationController!.navigationBar.standardAppearance

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = UIColor.appColor(.Color)
    
    }
    
}
