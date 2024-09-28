//
//  SnowViewController.swift
//  HomeWork
//
//  Created by brubru on 18.09.2024.
//


import UIKit

class SnowViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		
		// Создаем слой эмиттера
		let snowEmitterLayer = CAEmitterLayer()
		
		// Устанавливаем позицию эмиттера
		snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -10)
		snowEmitterLayer.emitterSize = CGSize(width: view.bounds.size.width, height: 1)
		
		// Задаем направление движения частиц (по вертикали вниз)
		snowEmitterLayer.emitterShape = .line
		snowEmitterLayer.emitterMode = .outline
		
		// Создаем клетки эмиттера (снежинки)
		let snowflakeCell = CAEmitterCell()
		snowflakeCell.birthRate = 10   // Сколько снежинок создается за секунду
		snowflakeCell.lifetime = 20.0  // Время "жизни" каждой снежинки
		snowflakeCell.velocity = 30    // Скорость движения снежинок
		snowflakeCell.velocityRange = 20  // Диапазон скорости (чтобы снежинки двигались с разной скоростью)
		snowflakeCell.yAcceleration = 30  // Ускорение движения вниз
		
		// Настраиваем внешний вид снежинок
		snowflakeCell.contents = UIImage(named: "snowflake")?.cgImage  // Изображение снежинки
		snowflakeCell.scale = 0.06  // Начальный размер снежинки
		snowflakeCell.scaleRange = 0.03  // Диапазон изменения размера
		snowflakeCell.alphaSpeed = -0.02  // Постепенное исчезновение снежинки
		
		// Добавляем снежинку в эмиттер
		snowEmitterLayer.emitterCells = [snowflakeCell]
		
		// Добавляем слой эмиттера на главный слой экрана
		view.layer.addSublayer(snowEmitterLayer)
	}
}
