//
//  StartView.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

class StartView: UIView {
    
    /* ********************************************************************************
     *
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView : UIScrollView!
    
    var logoImageView : UIImageView!
    
    var createAccountButton : UIButton!
    
    var playImageView : UIImageView!
    
    var titleLabel : UILabel!
    
    var descriptionLabel : UILabel!
    
    var loginButton : UIButton!
    
    var registerButton : UIButton!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        
        super.init(frame: view.frame);
        view.backgroundColor = UIColor.black
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        var yPosition = height*0.08
        
        //------------------------------ Scroll View ----------------------------------

        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.backgroundColor = .clear
        scrollView.isScrollEnabled = true
        scrollView.contentInsetAdjustmentBehavior = .never
        
        view.addSubview(scrollView)
        
        
        //--------------------------- Logo Image View -------------------------------
        
        logoImageView = UIImageView(frame: CGRect(x: width*0.05, y: height*0.05, width: width*0.3, height: 70))
        logoImageView.image = UIImage(named: "logo_png")
        logoImageView.contentMode = .scaleAspectFit
        
        scrollView.addSubview(logoImageView)
        
        //--------------------------- Create Account Label -------------------------------
        
        createAccountButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.3, height: 70))
        createAccountButton.frame.origin.x = width*0.95 - createAccountButton.frame.width
        createAccountButton.center.y = logoImageView.center.y
        createAccountButton.setTitle("Criar conta", for: .normal)
        createAccountButton.setTitleColor(UIColor.white, for: .normal)
        createAccountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        createAccountButton.isUserInteractionEnabled = true
        
        scrollView.addSubview(createAccountButton)
        
        yPosition = yPosition + logoImageView.frame.height - 20
        
        //------------------------- Register Button ------------------------------
        
        registerButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.25, height: 50))
        registerButton.setTitle("Criar conta", for: .normal)
        registerButton.setTitleColor(UIColor.white, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        registerButton.frame.origin.y = logoImageView.frame.origin.y
        registerButton.frame.origin.x = width*0.95 - registerButton.frame.width
        
//        scrollView.addSubview(registerButton)
        
        //--------------------------- Play Image View -------------------------------
        
        playImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.8, height: width*0.8))
        playImageView.image = UIImage(named: "Fundo Login - cortado")
        playImageView.contentMode = .scaleAspectFill
        playImageView.center.x = width/2
        
        scrollView.addSubview(playImageView)
        
        yPosition = yPosition + playImageView.frame.height + 20
        
        //------------------------- Title Label --------------------------
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 90))
        titleLabel.text = "Filmes, séries e muito mais"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.center.x = width/2
        titleLabel.textAlignment = .center
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.numberOfLines = 2
        
        scrollView.addSubview(titleLabel)
        
        yPosition = yPosition + titleLabel.frame.height
        
        //------------------------- Description Label --------------------------
        
        descriptionLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.8, height: 130))
        descriptionLabel.text = "Assista a Maricá Filmes! Agora ainda mais filmes e séries disponíveis, sem necessidade de assinatura."
        descriptionLabel.textColor = UIColor.appColor(.gray)
        descriptionLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        descriptionLabel.center.x = width/2
        descriptionLabel.textAlignment = .center
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.adjustsFontSizeToFitWidth = true
        descriptionLabel.numberOfLines = 5
        
        scrollView.addSubview(descriptionLabel)
        
        yPosition = yPosition + descriptionLabel.frame.height + 20
        
        //------------------------- Login Button ------------------------------
        
        loginButton = UIButton(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 50))
        loginButton.setTitle("Entrar", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        loginButton.backgroundColor = UIColor.red
        loginButton.center.x = width/2
        loginButton.layer.cornerRadius = 4
        
        scrollView.addSubview(loginButton)
        
        scrollView.contentSize = CGSize(width: width, height: yPosition + 60)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
