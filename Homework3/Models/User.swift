import Foundation

struct User {
    //Security data
    let id: Int64
    let login: String
    var password: String

    //Primary info
    var firstName: String
    var secondName: String
    var birthDate: String

    var country: String
    var city: String
    var address: String

    //Job info
    var placeOfWork: String
    var position: String
    var hireDate: String

    //Personal info
    var bio: String
    var hobbies: String

    init(id: Int64 = Int64(Date().timeIntervalSince1970),
         login: String,
         password: String,

         firstName: String = "",
         secondName: String  = "",
         birthDate: String  = "",

         country: String  = "",
         city: String  = "",
         address: String  = "",

         placeOfWork: String  = "",
         position: String  = "",
         hireDate: String  = "",

         bio: String  = "",
         hobbies: String  = ""
    ) {
        self.id = id
        self.login = login
        self.password = password

        self.firstName = firstName
        self.secondName = secondName
        self.birthDate = birthDate

        self.country = country
        self.city = city
        self.address = address

        self.placeOfWork = placeOfWork
        self.position = position
        self.hireDate = hireDate

        self.bio = bio
        self.hobbies = hobbies
    }
}

let guestUser = User(
    id: 0,
    login: "guest",
    password: "guest",

    firstName: "Василий",
    secondName: "Пупкин",
    birthDate: "07/12/1980",

    country: "Нарния",
    city: "Кэр-Паравель",
    address: "ул.Ленина, д.12, кв.40",

    placeOfWork: "ООО 'Рога и Копыта'",
    position: "Младший властелин шлагбаума",
    hireDate: "10/12/2010",

    bio: "Конь, стул, 28",
    hobbies: "Мемы, котики"
)

var users: [User] = [
    guestUser
]
