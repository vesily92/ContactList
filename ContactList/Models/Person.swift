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
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {

        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()

        let iterationCount = min(firstNames.count, lastNames.count, phoneNumbers.count, emails.count)
        
        for index in 0..<iterationCount {
            
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
