//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Василий Пронин on 08.09.2021.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    var person: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person[indexPath.section].phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        } else {
            content.text = person[indexPath.section].email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }

        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
}
