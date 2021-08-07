//
//  LoginController.swift
//  TwitterTutorial
//
//  Created by billy.cychan on 8/8/2021.
//

import UIKit

class LoginController: UIViewController {
    // MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "TwitterLogo")
        return imageView
    }()
    
    private lazy var emailConatinerView: UIView = {
        let image = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1")
        let view = Utilitles().inputContainerView(withImage: image, textField: emailTextField)
        return view
    }()
    
    private lazy var passwordConatinerView: UIView = {
        let image = #imageLiteral(resourceName: "ic_lock_outline_white_2x")
        let view = Utilitles().inputContainerView(withImage: image, textField: passWordTextField)
        return view
    }()
    
    private let emailTextField: UITextField = {
        let textField = Utilitles().textField(withPlaceholder: "Email")
        return textField
    }()
    
    private let passWordTextField: UITextField = {
        let textField = Utilitles().textField(withPlaceholder: "Password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
        
    // MARK: - Selectors

    // MARK: - Helpers

    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailConatinerView, passwordConatinerView])
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor,
                     right: view.rightAnchor, paddingLeft: 16, paddingRight: 16)
    }

}
