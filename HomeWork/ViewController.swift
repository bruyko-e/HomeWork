//
//  ViewController.swift
//  HomeWork
//
//  Created by brubru on 08.09.2024.
//

import UIKit

class ViewController: UIViewController {
	
	private let helper = Helper()
	private let repository = UserRepository()
	
	private let textLabel = UILabel()
	private let button: UIButton = {
		let button = UIButton(frame: CGRect(x: 100, y: 150, width: 200, height: 50))
		button.layer.backgroundColor = UIColor.clear.cgColor
		button.layer.shadowColor = UIColor.black.cgColor
		button.layer.shadowOffset = CGSize(width: 15, height: 15)
		button.layer.shadowOpacity = 1
		button.layer.shadowRadius = 10

		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .gray
		view.alpha = 0.9
		showFullName()
		
		setupLabel()
		
		view.addSubview(textLabel)
		view.addSubview(button)
	}
	
	private func showFullName() {
		helper.addUsers(repository.getUsers())
	}
	
	private func setupLabel() {
		let randomPerson = helper.getUsers().randomElement()
		
		textLabel.text = randomPerson?.person.fullName
		textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
	}
}



