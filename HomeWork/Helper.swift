//
//  Helper.swift
//  HomeWork
//
//  Created by brubru on 09.09.2024.
//

import Foundation

class Helper {
	private var users = [User]()
	
	func addPerson(_ user: User) {
		users.append(user)
	}
	
	func getUsers() -> [User] {
		users
	}
}
