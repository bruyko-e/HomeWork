//
//  Person.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import Foundation

struct User {
	let login: String
	let password: String
	let person: Person
}

struct Person {
	let name: String
	let surename: String
	
	var fullName: String {
		"\(name) \(surename)"
	}
}
