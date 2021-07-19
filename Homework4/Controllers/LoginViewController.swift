import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 5
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let targetVC = segue.destination as? UserTabBarController else { return }
        targetVC.user = users.first{ $0.securityInfo.login == loginTextField.text }
        segue.perform()

    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        if !authenticate(login: loginTextField.text!, password: passwordTextField.text!) {
            showAlert(title: "Authentication error",
                      message: "Login or password is incorrect")
            return
        }

        performSegue(withIdentifier: "goToTabBarView", sender: self)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)

        view.endEditing(true)
    }

    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }

    @IBAction func remindLogin(_ sender: Any) {
        showAlert(title: "Don't panic!", message: "\n\nYour login is \(guestUser.securityInfo.login)")
    }

    @IBAction func remindPassword(_ sender: Any) {
        showAlert(title: "Don't panic!", message: "\n\nYour password is \(guestUser.securityInfo.password)")
    }

    private func authenticate(login: String, password: String) -> Bool {
        users.contains{
            $0.securityInfo.login == login && $0.securityInfo.password == password
        }
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }

}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if loginTextField.isEditing {
            passwordTextField.becomeFirstResponder()

        } else if passwordTextField.isEditing {
            performSegue(withIdentifier: "goToTabBarView", sender: self)
        }

        return true
    }
}
