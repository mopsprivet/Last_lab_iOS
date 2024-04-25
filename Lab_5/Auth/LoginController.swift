import UIKit

class LoginController: UIViewController {
    
    private let headerView = AuthHeaderView(title: "Sign In", subTitle: "Sign into your account")
    
    private let usernameField = CustomTextField(fieldType: .username)
    
    private let passwordField = CustomTextField(fieldType: .password)
        
    private let signInButton = CustomButton(title: "Sign In", hasBackground: true, fontSize: .med)
    private let newUserButton = CustomButton(title: "Sign Up", fontSize: .med)
    private let forgotPasswordButton = CustomButton(title: "Forgot Password?", fontSize: .small)


    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        self.newUserButton.addTarget(self, action: #selector(didTapNewUser), for: .touchUpInside)
        self.forgotPasswordButton.addTarget(self, action: #selector(didTapForgotPassword), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    
    private func setupUI() {
        self.view.backgroundColor = #colorLiteral(red: 0.1255135536, green: 0.135696739, blue: 0.1907175183, alpha: 1)
        self.view.addSubview(headerView)
        self.view.addSubview(usernameField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signInButton)
        self.view.addSubview(newUserButton)
        self.view.addSubview(forgotPasswordButton)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        newUserButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 12),
            self.usernameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant: 55),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            self.passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 22),
            self.passwordField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant: 55),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            self.signInButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 22),
            self.signInButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.signInButton.heightAnchor.constraint(equalToConstant: 45),
            self.signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            self.newUserButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 11),
            self.newUserButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.newUserButton.heightAnchor.constraint(equalToConstant: 44),
            self.newUserButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80),
            
            self.forgotPasswordButton.topAnchor.constraint(equalTo: newUserButton.bottomAnchor, constant: 6),
            self.forgotPasswordButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.forgotPasswordButton.heightAnchor.constraint(equalToConstant: 44),
            self.forgotPasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80)
        ])
}
            
            // MARK: - Selectors
            @objc private func didTapSignIn() {
                print("DEBUG PRINT:", "didTapSignIn")
            }
            
            @objc private func didTapNewUser() {
                print("DEBUG PRINT:", "didTapNewUser")
            }
            
            @objc private func didTapForgotPassword() {
                print("DEBUG PRINT:", "didTapForgotPassword")
            }
}
