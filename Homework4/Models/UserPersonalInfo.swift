import Foundation

struct UserPersonalInfo {
    var bio: String
    var hobbies: String

    init( bio: String,
          hobbies: String) {
        self.bio = bio
        self.hobbies = hobbies
    }
}
