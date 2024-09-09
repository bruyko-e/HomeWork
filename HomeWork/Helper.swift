//
//  Helper.swift
//  HomeWork
//
//  Created by brubru on 09.09.2024.
//

import Foundation

class Helper {
	private var people = [Person]()
	
	func addPerson(_ person: Person) {
		people.append(person)
	}
	
	func getPeople() -> [Person] {
		people
	}
}
