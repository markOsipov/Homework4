import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!

    var user: User? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        exitButton.layer.cornerRadius = 5

        if let user = user {
            welcomeLabel.text = "Welcome, \(user.firstName) 👋"
        } else {
            welcomeLabel.text = "Welcome"
        }
    }
}
