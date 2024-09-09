//
//  ViewController.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	let name = "Djony"
	let surename = "Mem"
	
	var fullName: String {
		"\(name) \(surename)"
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		print("Меня зовут \(fullName), я создал свое первое приложение.")
	}
}

