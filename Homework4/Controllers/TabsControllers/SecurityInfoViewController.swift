import UIKit

class SecurityInfoViewController: UIViewController {
    @IBOutlet weak var loginValue: UILabel!
    @IBOutlet weak var passwordValue: UILabel!

    var securityInfo: UserSecurityInfo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let userTBC = tabBarController as? UserTabBarController else { return }
        guard let securityInfo = userTBC.user?.securityInfo else { return }

        loginValue.text = securityInfo.login
        passwordValue.text = securityInfo.password
    }
}
