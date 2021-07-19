import Foundation

struct UserJobInfo {
    var placeOfWork: String
    var position: String
    var hireDate: String

    init(placeOfWork: String,
         position: String,
         hireDate: String
    ) {
        self.placeOfWork = placeOfWork
        self.position = position
        self.hireDate = hireDate
    }
}
