//
//  LoginView.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView : UIScrollView!
            
    var logoImageView : UIImageView!
    
    var beginSessionLabel : UILabel!
    
    var welcomeLabel : UILabel!
    
    var googleLoginButton : UIButton!
    
    var googleImageView : UIImageView!
    
    var lineView : UIView!
    
    var orLabel : UILabel!
    
    var alertCardView : UIView!
    
    var alertImageView : UIImageView!
    
    var alertLabel : UILabel!
    
    var emailLabel : UILabel!
    
    var emailTextField : UITextField!
    
    var circleXImageView : UIImageView!
    
    var emailLineView : UIView!
    
    var emailImageView : UIImageView!
    
    var passwordLabel : UILabel!
    
    var padlockImageView : UIImageView!
    
    var passwordTextField : UITextField!
    
    var pesswordLineView : UIView!
    
    var eyePsswordImageView : UIImageView!
    
    var connectSwitch = UIButton(type: .custom)
    
    var keepConnectedLabel : UILabel!
        
    var forgotMyPasswordLabel : UILabel!
    
    var termsSwitch = UIButton(type: .custom)
    
    var termsLabel : UILabel!
        
    var signInButton : UIButton!
        
    var registerLabel : UILabel!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        
        super.init(frame: view.frame);
        view.backgroundColor = UIColor.white
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        var yPosition = height*0.05

        //------------------------------ Scroll View ----------------------------------

        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.backgroundColor = .clear
        scrollView.isScrollEnabled = true
        scrollView.contentInsetAdjustmentBehavior = .never
        
        view.addSubview(scrollView)

        //--------------------------- Logo Image View -------------------------------
        
        logoImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: 80, height: 80))
        logoImageView.image = UIImage(named: "logo_transparente")
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.center.x = width/2
        
        scrollView.addSubview(logoImageView)
        
        yPosition = yPosition + logoImageView.frame.height + 25
        
        //------------------------- Begin Session Label --------------------------
        
        beginSessionLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 25))
        beginSessionLabel.text = "Iniciar sessão"
        beginSessionLabel.textColor = UIColor.blue
        beginSessionLabel.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        beginSessionLabel.center.x = width/2
        beginSessionLabel.textAlignment = .center
        
        scrollView.addSubview(beginSessionLabel)
        
        yPosition = yPosition + beginSessionLabel.frame.height + 10
        
        //------------------------- Welcome Label --------------------------
        
        welcomeLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 25))
        welcomeLabel.text = "Olá, bem-vindo à rede social de todo sambista"
        welcomeLabel.textColor = UIColor.blue
        welcomeLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        welcomeLabel.center.x = width/2
        welcomeLabel.textAlignment = .center

        scrollView.addSubview(welcomeLabel)
        
        yPosition = yPosition + welcomeLabel.frame.height + 20
        
        //------------------------- Google Button ------------------------------------------
        
        googleLoginButton = UIButton(frame: CGRect(x: 0.05, y: yPosition, width: width*0.9, height: 50))
        googleLoginButton.setTitle("Entrar com Google", for: .normal)
        googleLoginButton.setTitleColor(UIColor.orange, for: .normal)
        googleLoginButton.backgroundColor = .white
        googleLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        googleLoginButton.layer.borderColor = UIColor.orange.cgColor
        googleLoginButton.layer.borderWidth = 2
        googleLoginButton.layer.cornerRadius = googleLoginButton.frame.height/2
        googleLoginButton.center.x = width/2
        
        scrollView.addSubview(googleLoginButton)

        //---------------------------- Google Image View --------------------------
        
        googleImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        googleImageView.image = UIImage(named: "google")
        googleImageView.contentMode = .scaleAspectFit
        googleImageView.isUserInteractionEnabled = true
        googleImageView.frame.origin.x = googleLoginButton.frame.origin.x + 70
        googleImageView.center.y = googleLoginButton.center.y
        
        scrollView.addSubview(googleImageView)
        
        yPosition = yPosition + googleLoginButton.frame.height + 30
        
        //----------------------- Line View -------------------------------
        
        lineView = UIView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.9, height: 2))
        lineView.backgroundColor = UIColor.gray
        
        scrollView.addSubview(lineView)
        
        yPosition = yPosition + lineView.frame.height + 15
        
        //---------------------- or Label ------------------------------------
        
        orLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        orLabel.text = "OU"
        orLabel.backgroundColor = .white
        orLabel.textColor = UIColor.blue
        orLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        orLabel.textAlignment = .center
        orLabel.center.x = lineView.center.x
        orLabel.center.y = lineView.center.y
        
        scrollView.addSubview(orLabel)
        
        //----------------------- Alert Card View --------------------------
        
        alertCardView = UIView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.9, height: 60))
        alertCardView.backgroundColor = UIColor.red
        alertCardView.clipsToBounds = true
        alertCardView.layer.cornerRadius = 6
        alertCardView.isHidden = true
        
        scrollView.addSubview(alertCardView)
        
        yPosition = yPosition + alertCardView.frame.height + 20
        
        //---------------------- Alert Image View --------------------------
        
        alertImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        alertImageView.image = UIImage(named: "face-id-error")
        alertImageView.center.y = alertCardView.center.y
        alertImageView.frame.origin.x = alertCardView.frame.origin.x + 20
        alertImageView.isHidden = true
        
        scrollView.addSubview(alertImageView)
        
        //----------------------- Alert Label -------------------------------
        
        alertLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.7, height: 40))
        alertLabel.text = "O e-mail e/ou senha estão incorretos."
        alertLabel.textColor = UIColor.red
        alertLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        alertLabel.center.y = alertImageView.center.y
        alertLabel.frame.origin.x = alertImageView.frame.origin.x + alertImageView.frame.width + 10
        alertLabel.isHidden = true
        
        scrollView.addSubview(alertLabel)
        
        //------------------------- Email Label --------------------------
        
        emailLabel = UILabel(frame: CGRect(x: width*0.05, y: 0, width: width*0.8, height: 15))
        emailLabel.text = "E-mail"
        emailLabel.textColor = UIColor.orange
        emailLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        emailLabel.frame.origin.y = orLabel.frame.origin.y + orLabel.frame.height + 10
        
        scrollView.addSubview(emailLabel)
        
        //---------------------------------- Email TextField --------------------------
        
        emailTextField = UITextField(frame: CGRect(x: width*0.05, y: 0, width: width*0.9, height: 56))
        emailTextField.backgroundColor = UIColor.appColor(.textFieldColor)
        emailTextField.textColor = UIColor.blue
        emailTextField.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        emailTextField.keyboardType = .emailAddress
        emailTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        emailTextField.layer.cornerRadius = 5
        emailTextField.center.x = width/2
        emailTextField.autocapitalizationType = .none
        emailTextField.frame.origin.y = emailLabel.frame.origin.y + emailLabel.frame.height + 10

        scrollView.addSubview(emailTextField)
        
        //---------------------------------- Circle X Image View  ---------------------------------
        
        circleXImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        circleXImageView.image = UIImage(named: "circleX")?.withRenderingMode(.alwaysTemplate)
        circleXImageView.contentMode = .scaleAspectFit
        circleXImageView.tintColor = UIColor.orange
        circleXImageView.frame.origin.x = width*0.9 - emailTextField.frame.origin.x
        circleXImageView.center.y = emailTextField.center.y
        circleXImageView.isUserInteractionEnabled = true
        circleXImageView.isHidden = true
        circleXImageView.center.y = emailTextField.center.y
        
        scrollView.addSubview(circleXImageView)
        
        //------------------------------- Line View ------------------------------------
        
        emailLineView = UIView(frame: CGRect(x: width*0.06, y: 0, width: width*0.89, height: 2))
        emailLineView.backgroundColor = UIColor.blue
        emailLineView.center.x = width/2
        emailLineView.frame.origin.y = emailTextField.frame.origin.y + emailTextField.frame.height
        
        scrollView.addSubview(emailLineView)
        
        //---------------------------------- Email Image View  ---------------------------------
        
        emailImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 18, height: 18))
        emailImageView.image = UIImage(named: "email")
        emailImageView.contentMode = .scaleAspectFit
        emailImageView.frame.origin.x = emailTextField.frame.origin.x + 15
        emailImageView.center.y = emailTextField.center.y
        emailImageView.isUserInteractionEnabled = true
        emailImageView.center.y = emailTextField.center.y
        
        scrollView.addSubview(emailImageView)
        
        //------------------------- Email Label --------------------------
        
        passwordLabel = UILabel(frame: CGRect(x: width*0.05, y: 0, width: width*0.8, height: 15))
        passwordLabel.text = "Senha"
        passwordLabel.textColor = UIColor.orange
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        passwordLabel.frame.origin.y = emailTextField.frame.origin.y + emailTextField.frame.height + 20
        
        scrollView.addSubview(passwordLabel)
        
        //---------------------- Password Textfield -------------------------------
        
        passwordTextField = UITextField(frame: CGRect(x: width*0.05, y: 0, width: width*0.9, height: 56))
        passwordTextField.backgroundColor = UIColor.appColor(.textFieldColor)
        passwordTextField.textColor = UIColor.blue
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = .always
        passwordTextField.isSecureTextEntry = true
        passwordTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
        passwordTextField.center.x = width/2
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.frame.origin.y = passwordLabel.frame.origin.y + passwordLabel.frame.height + 10

        scrollView.addSubview(passwordTextField)
        
        //-------------------- PadLock Image View  -----------------------
        
        padlockImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        padlockImageView.image = UIImage(named: "padlock")
        padlockImageView.contentMode = .scaleAspectFit
        padlockImageView.frame.origin.x = passwordTextField.frame.origin.x + 15
        padlockImageView.center.y = passwordTextField.center.y
        padlockImageView.isUserInteractionEnabled = true
        padlockImageView.center.y = passwordTextField.center.y
        
        scrollView.addSubview(padlockImageView)
        
        //------------------------------- Line View ------------------------------------
        
        pesswordLineView = UIView(frame: CGRect(x: width*0.06, y: 0, width: width*0.89, height: 2))
        pesswordLineView.backgroundColor = UIColor.blue
        pesswordLineView.center.x = width/2
        pesswordLineView.frame.origin.y = passwordTextField.frame.origin.y + passwordTextField.frame.height
        
        scrollView.addSubview(pesswordLineView)
        
        //---------------------------------- Eye Image View  ---------------------------------
        
        eyePsswordImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 28, height: 28))
        eyePsswordImageView.image = UIImage(named: "eye")?.withRenderingMode(.alwaysTemplate)
        eyePsswordImageView.contentMode = .scaleAspectFit
        eyePsswordImageView.tintColor = UIColor.orange
        eyePsswordImageView.frame.origin.x = width*0.89 - passwordTextField.frame.origin.x
        eyePsswordImageView.isUserInteractionEnabled = true
        eyePsswordImageView.isHidden = true
        eyePsswordImageView.center.y = passwordTextField.center.y
        
        scrollView.addSubview(eyePsswordImageView)
        
        //------------------------- Forgot Password Label --------------------------
        
        forgotMyPasswordLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        forgotMyPasswordLabel.text = "Esqueceu a senha?"
        forgotMyPasswordLabel.textColor = UIColor.orange
        forgotMyPasswordLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        forgotMyPasswordLabel.frame.origin.x = width*0.66 - passwordTextField.frame.origin.x
        forgotMyPasswordLabel.sizeToFit()
        forgotMyPasswordLabel.isUserInteractionEnabled = true
        forgotMyPasswordLabel.frame.origin.y = passwordTextField.frame.origin.y + passwordTextField.frame.height + 10
        
        scrollView.addSubview(forgotMyPasswordLabel)
        
        //------------------- Connect Switch ----------------------
        
        connectSwitch.frame = CGRect(x: width*0.03, y: 0, width: 40, height: 40)
        connectSwitch.setImage(UIImage(named: "nocheck"), for: .normal)
        connectSwitch.setImage(UIImage(named: "check 1"), for: .selected)
        connectSwitch.isSelected = true
        connectSwitch.frame.origin.y = forgotMyPasswordLabel.frame.origin.y + forgotMyPasswordLabel.frame.height + 10
        
        scrollView.addSubview(connectSwitch)
        
        //------------------ Keep Connected Label ------------------
        
        keepConnectedLabel = UILabel(frame: CGRect(x: width*0.05, y: 0, width: width*0.9, height: 20))
        keepConnectedLabel.text = "Manter conectado"
        keepConnectedLabel.textColor = UIColor.blue
        keepConnectedLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        keepConnectedLabel.frame.origin.x = connectSwitch.frame.origin.x + connectSwitch.frame.width + 10
        keepConnectedLabel.center.y = connectSwitch.center.y
        
        scrollView.addSubview(keepConnectedLabel)

        //------------------- Connect Switch ----------------------
        
        termsSwitch.frame = CGRect(x: width*0.03, y: 0, width: 40, height: 40)
        termsSwitch.setImage(UIImage(named: "nocheck"), for: .normal)
        termsSwitch.setImage(UIImage(named: "check 1"), for: .selected)
        termsSwitch.isSelected = false
        termsSwitch.frame.origin.y = keepConnectedLabel.frame.origin.y + keepConnectedLabel.frame.height + 30
        
        scrollView.addSubview(termsSwitch)
        
        //------------------ Terms Label ------------------
        
        termsLabel = UILabel(frame: CGRect(x: width*0.05, y: 0, width: width*0.8, height: 40))
        termsLabel.text = "Concordo com os Termos e Condições de Utilização da PetSimples."
        termsLabel.textColor = UIColor.blue
        termsLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        termsLabel.frame.origin.x = termsSwitch.frame.origin.x + termsSwitch.frame.width + 10
        termsLabel.center.y = termsSwitch.center.y
        termsLabel.numberOfLines = 0
        termsLabel.lineBreakMode = .byWordWrapping
        
        let attrst01 = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14, weight: .regular), NSAttributedString.Key.foregroundColor :  UIColor.blue]

        let attrst02 = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .medium),
            NSAttributedString.Key.foregroundColor: UIColor.orange,
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue
        ] as [NSAttributedString.Key : Any]
        
        let attributedStr01 = NSMutableAttributedString(string:"Concordo com os  ", attributes:attrst01 as [NSAttributedString.Key : Any])

        let attributedStr02 = NSMutableAttributedString(string:"Termos e Condições de Utilização", attributes:attrst02 as [NSAttributedString.Key : Any])
        
        let attributedStr03 = NSMutableAttributedString(string:" da PetSimples.", attributes:attrst01 as [NSAttributedString.Key : Any])

        attributedStr01.append(attributedStr02)
        attributedStr01.append(attributedStr03)
        termsLabel.attributedText = attributedStr01
        
        scrollView.addSubview(termsLabel)
        
        yPosition = yPosition + termsLabel.frame.height + 20
        
        //------------------------- Login Button ------------------------------
        
        signInButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.9, height: 50))
        signInButton.setTitle("Entrar", for: .normal)
        signInButton.setTitleColor(UIColor.white, for: .normal)
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        signInButton.backgroundColor = UIColor.orange
        signInButton.center.x = width/2
        signInButton.layer.cornerRadius = signInButton.frame.height/2
        signInButton.frame.origin.y = termsLabel.frame.origin.y + termsLabel.frame.height + 40
        
        scrollView.addSubview(signInButton)
        
        //------------------ Register Label ------------------
        
        registerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.9, height: 20))
        registerLabel.text = "Não tem uma conta? Inscreva-se"
        registerLabel.textColor = UIColor.blue
        registerLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        registerLabel.center.x = width/2
        registerLabel.textAlignment = .center
        registerLabel.isUserInteractionEnabled = true
        registerLabel.frame.origin.y = signInButton.frame.origin.y + signInButton.frame.height + 20
        
        let attrst1 = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: .regular), NSAttributedString.Key.foregroundColor :  UIColor.blue]

        let attrst2 = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: .regular), NSAttributedString.Key.foregroundColor : UIColor.orange]
        
        let attributedStr1 = NSMutableAttributedString(string:"Não tem uma conta? ", attributes:attrst1 as [NSAttributedString.Key : Any])

        let attributedStr2 = NSMutableAttributedString(string:"Inscreva-se", attributes:attrst2 as [NSAttributedString.Key : Any])
        
        attributedStr1.append(attributedStr2)
        registerLabel.attributedText = attributedStr1
        
        scrollView.addSubview(registerLabel)
        
        scrollView.contentSize = CGSize(width: width, height: yPosition + 400)
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
