// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

public extension UIView {
	static var spacer: Self {
		.init()
	}

	static var container: Self {
		.init()
	}

	static func containing(_ layout: AnyLayout) -> AnyLayout {
		container.addingLayout(layout)
	}
}
