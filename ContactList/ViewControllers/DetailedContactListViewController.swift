//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Василий Пронин on 08.09.2021.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    
    private var contactList = Person.getPerson()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
        } else if indexPath.row == 1 {
            content.text = contact.eMail
        }

        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
}
