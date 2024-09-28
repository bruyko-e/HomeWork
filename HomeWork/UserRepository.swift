//
//  UserRepository.swift
//  HomeWork
//
//  Created by brubru on 14.09.2024.
//

import Foundation

class UserRepository {
	func getUsers() -> [User] {
		[
			User(
				login: "Login",
				password: "password",
				person: Person(name: "Tim", surename: "Cook")
			),
			User(
				login: "Login",
				password: "password",
				person: Person(name: "Tailor", surename: "Swift")
			)
		]
	}
}
