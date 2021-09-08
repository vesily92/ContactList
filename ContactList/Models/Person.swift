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
        for _ in 1...DataManager.shared.firstNames.count {
            let person = Person(
                firstName: DataManager.shared.firstNames.randomElement() ?? "",
                lastName: DataManager.shared.lastNames.randomElement() ?? "",
                phoneNumber: DataManager.shared.phoneNumbers.randomElement() ?? "",
                eMail: DataManager.shared.eMails.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
}
