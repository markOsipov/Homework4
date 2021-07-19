import UIKit

class PersonalInfoViewController: UIViewController {
    @IBOutlet weak var bioValue: UILabel!
    @IBOutlet weak var hobbiesValue: UILabel!

    var personalInfo: UserPersonalInfo? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let userTBC = tabBarController as? UserTabBarController else { return }
        guard let personalInfo = userTBC.user?.personalInfo else { return }

        bioValue.text = personalInfo.bio
        hobbiesValue.text = personalInfo.hobbies
    }
}
