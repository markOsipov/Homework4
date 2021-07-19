import UIKit

class JobInfoViewController: UIViewController {

    @IBOutlet weak var placeOfWorkValue: UILabel!
    @IBOutlet weak var positionValue: UILabel!
    @IBOutlet weak var hireDateValue: UILabel!

    var jobInfo: UserJobInfo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let userTBC = tabBarController as? UserTabBarController else { return }
        guard let jobInfo = userTBC.user?.jobInfo else { return }

        placeOfWorkValue.text = jobInfo.placeOfWork
        positionValue.text = jobInfo.position
        hireDateValue.text = jobInfo.hireDate
    }
}
