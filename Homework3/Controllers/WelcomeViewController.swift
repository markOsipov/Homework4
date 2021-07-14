import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    let defaultName = "Stranger"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func welcomeUser(_ userName: String) {
        let welcomeName = userName.isEmpty ? defaultName : userName

        welcomeLabel.text = "Welcome, \(welcomeName)!"
    }
}
