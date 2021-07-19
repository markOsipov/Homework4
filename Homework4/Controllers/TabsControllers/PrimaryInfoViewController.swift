import UIKit

class PrimaryInfoViewController: UIViewController {
    @IBOutlet weak var firstNameValue: UILabel!
    @IBOutlet weak var lastNameValue: UILabel!
    @IBOutlet weak var birthDateValue: UILabel!

    @IBOutlet weak var countryValue: UILabel!
    @IBOutlet weak var cityValue: UILabel!
    @IBOutlet weak var addressValue: UILabel!

    var primaryInfo: UserPrimaryInfo? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let userTBC = tabBarController as? UserTabBarController else { return }
        guard let primaryInfo = userTBC.user?.primaryInfo else { return }

        firstNameValue.text = primaryInfo.firstName
        lastNameValue.text = primaryInfo.lastName
        birthDateValue.text = primaryInfo.birthDate

        countryValue.text = primaryInfo.country
        cityValue.text = primaryInfo.city
        addressValue.text = primaryInfo.address
    }
}
