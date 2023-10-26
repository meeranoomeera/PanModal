//
//  WrapperView.swift
//  PanModalDemo
//
//  Created by Евгений Гульков on 27.09.2023.
//  Copyright © 2023 Detail. All rights reserved.
//

#if os(iOS)
import UIKit

public class ContainerWrapperView: UIView {
	public var isTouchPossible: ((CGPoint, UIEvent?) -> Bool)?

	public override func hitTest(
		_ point: CGPoint,
		with event: UIEvent?
	) -> UIView? {
		if isTouchPossible?(point, event) == false {
			return nil
		}
		return super.hitTest(point, with: event)
	}
}
#endif
