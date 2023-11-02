//
//  StartVC.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

class StartVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var startView : StartView!
    
    /* **************************************************************************************************
     *
     **  MARK: View
     **
     ****************************************************************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startView = StartView(view: view, parent: self)
        
        //------------------------ Targets ------------------------
        
        startView.loginButton.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        
//        startView.createAccountButton.addTarget(self, action: #selector(createAction), for: .touchUpInside)
//        
//        //Para saber se estar gravando a tela
//        NotificationCenter.default.addObserver(self, selector: #selector(preventScreenRecording), name: UIScreen.capturedDidChangeNotification, object: nil)
    }
    
    /* **************************************************************************************************
     **
     **  MARK: LogIn Button Action
     **
     ****************************************************************************************************/
    
    @objc func loginButtonAction(){
        
        let vc = LoginVC()
        
        vc.modalPresentationStyle = .fullScreen

        self.present(vc, animated: true, completion: nil)
        
    }
    
//    /* **************************************************************************************************
//     **
//     **  MARK: Block Sreen Recording
//     **
//     ****************************************************************************************************/
//
//    @objc func preventScreenRecording() {
//        let isCaptured = UIScreen.main.isCaptured
//
//        if isCaptured {
//
//            let vc = IsCapturedVC()
//
//            vc.modalPresentationStyle = .fullScreen
//
//            self.present(vc, animated: true, completion: nil)
//
//        }
//    }
//
//    /* **************************************************************************************************
//     **
//     **  MARK: LogIn Button Action
//     **
//     ****************************************************************************************************/
//
//    @objc func createAction(){
//
//        let vc = CreateAccountVC()
//
//        vc.modalPresentationStyle = .fullScreen
//
//        self.present(vc, animated: true, completion: nil)
//
//    }
    
}
