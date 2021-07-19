import Foundation

struct UserPrimaryInfo {
    var firstName: String
    var lastName: String
    var birthDate: String

    var country: String
    var city: String
    var address: String

    init(firstName: String,
         lastName: String,
         birthDate: String,

         country: String,
         city: String,
         address: String
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate

        self.country = country
        self.city = city
        self.address = address
    }
}
