//
//  Helper.swift
//  HomeWork
//
//  Created by brubru on 09.09.2024.
//

import Foundation

class Helper {
	private var users: [User] = []
	
	func addUsers(_ users: [User]) {
		self.users.append(contentsOf: users)
	}
	
	func addUser(_ user: User) {
		users.append(user)
	}
	
	func getUsers() -> [User] {
		users
	}
}
