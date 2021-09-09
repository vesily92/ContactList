//
//  TabBarController.swift
//  ContactList
//
//  Created by Василий Пронин on 09.09.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        
        viewControllers.forEach{
            
            if let navigationVC = $0 as? UINavigationController {
                if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                    contactListVC.person = person
                } else if let detailedContactListVC = navigationVC.topViewController as? DetailedContactListViewController {
                    detailedContactListVC.person = person
                }
            }
        }
    }
}

