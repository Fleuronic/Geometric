// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import enum Metric.Spacing

public extension Styled where Base: UIStackView {
	func horizontalSpacing(named name: Spacing.Horizontal.Name) -> Self {
		base.spacing = name(Spacing.Horizontal.self).value
		return self
	}

	func verticalSpacing(named name: Spacing.Vertical.Name) -> Self {
		base.spacing = name(Spacing.Vertical.self).value
		return self
	}
}
