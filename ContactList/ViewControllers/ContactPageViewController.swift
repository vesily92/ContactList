//
//  ContactPageViewController.swift
//  ContactList
//
//  Created by Василий Пронин on 08.09.2021.
//

import UIKit

class ContactPageViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberLabel.text = "Phone number: \n\(person.phoneNumber)"
        eMailLabel.text = "Phone number: \n\(person.eMail)"
        navigationItem.title = person.fullName
    }

}
