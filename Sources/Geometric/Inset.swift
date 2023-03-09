// Copyright © Fleuronic LLC. All rights reserved.

import Layoutless

import struct CoreGraphics.CGFloat
import struct Metric.Insets

public extension LayoutProtocol where Node: Anchorable {
	func insets(named name: Insets.Name) -> Layout<some Anchorable & LayoutNode> {
		insetBy(insets: name(Insets.self).value)
	}

	func horizontalInsets(named name: Insets.Horizontal.Name) -> Layout<some Anchorable & LayoutNode> {
		insetBy(horizontalInsets: name(Insets.Horizontal.self).value)
	}

	func verticalInsets(named name: Insets.Vertical.Name) -> Layout<some Anchorable & LayoutNode> {
		insetBy(verticalInsets: name(Insets.Vertical.self).value)
	}

	func margins(named name: Insets.Horizontal.Name) -> Layout<some Anchorable & LayoutNode> {
		let margin = Length.greaterThanOrEqualTo(name(Insets.Horizontal.self).value)
		return stickingToParentEdges(
			left: margin,
			right: margin
		)
	}
}

// MARK: -
private extension LayoutProtocol where Node: Anchorable {
	func insetBy(
		insets: CGFloat? = nil,
		horizontalInsets: CGFloat = 0,
		verticalInsets: CGFloat = 0
	) -> Layout<some Anchorable & LayoutNode> {
		let horizontal = insets ?? horizontalInsets
		let vertical = insets ?? verticalInsets
		return insetting(
			leftBy: horizontal,
			rightBy: horizontal,
			topBy: vertical,
			bottomBy: vertical
		)
	}
}
