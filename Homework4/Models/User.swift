import Foundation

struct User {
    var securityInfo: UserSecurityInfo
    var primaryInfo: UserPrimaryInfo
    var jobInfo: UserJobInfo
    var personalInfo: UserPersonalInfo

    init(id: Int64 = Int64(Date().timeIntervalSince1970),
         login: String,
         password: String,

         firstName: String = "",
         lastName: String  = "",
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
        self.securityInfo = UserSecurityInfo(
            login: login,
            password: password
        )
        self.primaryInfo = UserPrimaryInfo(
            firstName: firstName,
            lastName: lastName,
            birthDate: birthDate,

            country: country,
            city: city,
            address: address
        )
        self.jobInfo = UserJobInfo(
            placeOfWork: placeOfWork,
            position: position,
            hireDate: hireDate
        )

        self.personalInfo = UserPersonalInfo(
            bio: bio,
            hobbies: hobbies
        )
    }
}

let guestUser = User(
    id: 0,
    login: "guest",
    password: "guest",

    firstName: "Василий",
    lastName: "Пупкин",
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

//задел на будущее, если нужно будет регистрировать новых.
var users: [User] = [
    guestUser
]
