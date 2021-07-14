import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        exitButton.layer.cornerRadius = 5
    }

    func welcomeUser(_ userName: String) {
        welcomeLabel.text = "Welcome, \(userName) 👋"
    }
}
