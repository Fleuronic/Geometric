// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

public extension UIView {
	static var spacer: Self {
		.init()
	}

	static func containing(_ layout: AnyLayout) -> AnyLayout {
		UIView().addingLayout(layout)
	}
}
