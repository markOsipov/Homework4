import Foundation

struct UserSecurityInfo {
    let id: Int64
    let login: String
    var password: String

    init(id: Int64 = Int64(Date().timeIntervalSince1970),
         login: String,
         password: String
    ) {
        self.id = id
        self.login = login
        self.password = password
    }
}
