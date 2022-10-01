// Copyright © Fleuronic LLC. All rights reserved.

import class UIKit.UIView
import protocol Layoutless.AnyLayout

public extension UIView {
	static var spacer: Self {
		.init()
	}

	static func containing(_ layout: AnyLayout) -> AnyLayout {
		UIView().addingLayout(layout)
	}
}
