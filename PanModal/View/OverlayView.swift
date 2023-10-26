//
//  OverlayView.swift
//  PanModal
//
//  Created by Евгений Гульков on 22.09.2023.
//  Copyright © 2023 Detail. All rights reserved.
//

#if os(iOS)
import UIKit

public class OverlayView: UIView {
	public override func hitTest(
		_ point: CGPoint,
		with event: UIEvent?
	) -> UIView? {
		for view in subviews.reversed() {
			if view.frame.contains(point) {
				return super.hitTest(point, with: event)
			}
		}
		return nil
	}
}

#endif
