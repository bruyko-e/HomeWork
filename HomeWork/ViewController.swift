//
//  ViewController.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	let person = Person()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("Меня зовут \(person.fullName), я создал свое первое приложение.")
	}
}

