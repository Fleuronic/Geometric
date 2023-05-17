// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import struct Metric.Insets

public extension Styled where Base: UIStackView {
	func horizontalInsets(named name: Insets.Horizontal.Name) -> Self {
		let insets = name(Insets.Horizontal.self).value
		base.isLayoutMarginsRelativeArrangement = true
		base.directionalLayoutMargins.leading = insets
		base.directionalLayoutMargins.trailing = insets
		return self
	}

	func verticalInsets(named name: Insets.Vertical.Name) -> Self {
		let insets = name(Insets.Vertical.self).value
		base.isLayoutMarginsRelativeArrangement = true
		base.directionalLayoutMargins.top = insets
		base.directionalLayoutMargins.bottom = insets
		return self
	}
}
