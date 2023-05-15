// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

import struct Metric.Styled

public extension Styled {
	static func containing(_ layout: AnyLayout) -> AnyLayout {
		UIView().addingLayout(layout)
	}
}

// MARK: -
extension Styled {
	var layout: Layout<UIView> {
		.just(base)
	}
}
