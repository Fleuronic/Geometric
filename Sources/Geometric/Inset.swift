// Copyright © Fleuronic LLC. All rights reserved.

import enum Layoutless.Length
import struct CoreGraphics.CGFloat
import struct Metric.Insets
import struct Layoutless.Layout
import protocol Layoutless.LayoutNode
import protocol Layoutless.LayoutProtocol
import protocol Layoutless.Anchorable

public extension LayoutProtocol where Node: Anchorable {
	func insetBy(
		insets: Insets? = nil,
		horizontalInsets: Insets.Horizontal = .zero,
		verticalInsets: Insets.Vertical = .zero
	) -> Layout<some Anchorable & LayoutNode> {
		insetBy(
			insets: insets?.value,
			horizontalInsets: horizontalInsets.value,
			verticalInsets: verticalInsets.value
		)
	}

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

	func margins(_ margins: Insets.Horizontal) -> Layout<some Anchorable & LayoutNode> {
		let margin = Length.greaterThanOrEqualTo(margins.value)
		return stickingToParentEdges(
			left: margin,
			right: margin
		)
	}
}
