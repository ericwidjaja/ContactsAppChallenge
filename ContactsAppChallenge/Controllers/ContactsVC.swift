//  ViewController.swift
//  ContactsAppChallenge

//  Created by Eric Widjaja on 11/5/20.
//  Copyright © 2020 ericSwidjaja. All rights reserved.
//

import UIKit

//1.Rename ViewController into 'ContactsVC' using refactor
class ContactsVC: UIViewController {
    //2.Add 'TableView Object' on storyboard, set all constraints to 0, change to 1 on Prototype cells, inside tbl view cell -> change style to Subtitle, set identifier to 'contactCell'
    
    //MARK: - Properties
    //3. then connect it with outlet property, create private var allContacts.
    @IBOutlet weak var contactsTableView: UITableView!
    
    private var allContacts = [Contact]()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //7. call 'loadData' and dataSource
        loadData()
        contactsTableView.dataSource = self
    }
    
    //MARK: - Methods
    //4. create private func 'loadData'
    private func loadData() {
        allContacts = Contact.getAllContacts()
    }
}

//MARK: - Extensions
//5. create 2 extensions conforming to UITableViewDataSoure -> one for numberOfRowsInSection, and the second one for cellForRowAt to deque your data
extension ContactsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //6. to populate cells -> needs the right indexPath
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = allContacts[indexPath.row]
        cell.textLabel?.text = contact.fullName
        cell.detailTextLabel?.text = contact.phoneNumber.description
        return cell
    }
}
