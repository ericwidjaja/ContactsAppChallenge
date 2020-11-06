//  ContactsAppChallengeTests.swift
//  ContactsAppChallengeTests
//  Created by Eric Widjaja on 11/6/20.
//  Copyright © 2020 ericSwidjaja. All rights reserved.

import XCTest

@testable import ContactsAppChallenge

class ContactsAppChallengeTests: XCTestCase {
    
    func testGetContacts() {
        //Arrange
        let contactsCount = 20
        
        //Act
        let actualContactsCount = Contact.getAllContacts().count
        
        //Assert
        XCTAssertEqual(contactsCount, actualContactsCount, "Value should be equal")
    }
}

