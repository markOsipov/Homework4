import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }

        if authenticate(login: loginTextField.text, password: passwordTextField.text) {
            segue.perform()
            welcomeVC.welcomeUser(loginTextField.text!)
        } else {
            let alert = UIAlertController(title: "Authentication error",
                                          message: "Login or password are incorrect", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)

        }

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)

        loginTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }

    func authenticate(login: String?, password: String?) -> Bool {
        guard let password: String = password else {
            return false
        }
        return !password.isEmpty
    }

    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }

}

