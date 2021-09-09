//
//  Person.swift
//  ContactList
//
//  Created by Василий Пронин on 08.09.2021.
//

struct Person {
    
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {

        var persons: [Person] = []

        for _ in 0..<DataManager.shared.firstNames.count {


            let person = Person(
                firstName: DataManager.shared.firstNames
                    .remove(at: Int.random(in: 0..<DataManager.shared.firstNames.count)),
                lastName: DataManager.shared.lastNames
                    .remove(at: Int.random(in: 0..<DataManager.shared.lastNames.count)),
                phoneNumber: DataManager.shared.phoneNumbers
                    .remove(at: Int.random(in: 0..<DataManager.shared.phoneNumbers.count)),
                eMail: DataManager.shared.eMails
                    .remove(at: Int.random(in: 0..<DataManager.shared.eMails.count))
            )
            persons.append(person)
        }
        return persons
    }
}
