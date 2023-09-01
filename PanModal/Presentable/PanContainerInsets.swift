//
//  PanContainerInsets.swift
//  PanModal
//
//  Created by Евгений Гульков on 24.08.2023.
//  Copyright © 2023 Detail. All rights reserved.
//

import UIKit

public enum PanContainerInsets {
	case none
	case custom(UIEdgeInsets)
	
	public var insets: UIEdgeInsets {
		switch self {
		case .none:
			return .zero
		case .custom(let insets):
			return insets
		}
	}
}
