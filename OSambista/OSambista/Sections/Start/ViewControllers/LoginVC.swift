//
//  LoginVC.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var loginView : LoginView!
    
    /* **************************************************************************************************
     *
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(view: view, parent: self)
        
    }
    
}
