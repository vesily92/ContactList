//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Василий Пронин on 08.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {

    var person: [Person]!
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = person[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactPageVC = segue.destination as? ContactPageViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let contact = person[indexPath.row]
        contactPageVC.person = contact
    }
    

}
