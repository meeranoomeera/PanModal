//
//  File.swift
//  
//
//  Created by VLADIMIR LEVTSOV on 26.05.2023.
//

import UIKit

public extension UIColor {
	convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
		let colorComponents = (
			red: CGFloat((hex >> 16) & 0xff) / 255,
			green: CGFloat((hex >> 08) & 0xff) / 255,
			blue: CGFloat((hex >> 00) & 0xff) / 255
		)
		self.init(
			red: colorComponents.red,
			green: colorComponents.green,
			blue: colorComponents.blue,
			alpha: alpha
		)
	}
}
