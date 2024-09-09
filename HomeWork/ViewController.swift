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
		helper.addPerson(Person(name: "Tim", surename: "Cook"))
		helper.addPerson(Person(name: "Tailor", surename: "Swift"))
		
		for person in helper.getPeople() {
			print("Меня зовут \(person.fullName), я создал свое первое приложение.")
		}
	}
}

