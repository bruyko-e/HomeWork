//
//  ViewController.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		showFullName()
	}
	
	private func showFullName() {
		helper.addPerson(
			User(
				login: "Login",
				password: "password",
				person: Person(name: "Tim", surename: "Cook")
			)
		)
		helper.addPerson(
			User(
				login: "Login",
				password: "password",
				person: Person(name: "Tailor", surename: "Swift")
			)
		)
		
		for user in helper.getUsers() {
			print("Меня зовут \(user.person.fullName), я создал свое первое приложение.")
		}
	}
}

