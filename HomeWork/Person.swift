//
//  Person.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import Foundation

class Person {
	let name: String
	let surename: String
	
	var fullName: String {
		"\(name) \(surename)"
	}
	
	init(name: String, surename: String) {
		self.name = name
		self.surename = surename
	}
}
