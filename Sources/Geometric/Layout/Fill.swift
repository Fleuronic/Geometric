// Copyright © Fleuronic LLC. All rights reserved.

import Layoutless

import struct CoreGraphics.CGFloat
import struct Metric.Insets

public extension LayoutProtocol where Node: Anchorable {
	func fillingParent(
		insets: Insets? = nil,
		horizontalInsets: Insets.Horizontal = .zero,
		verticalInsets: Insets.Vertical = .zero,
		relativeToSafeArea: Bool = false
	) -> Layout<ChildNode<Node>> {
		fillingParent(
			insets: insets,
			horizontalInsets: horizontalInsets.value,
			verticalInsets: verticalInsets.value,
			relativeToSafeArea: relativeToSafeArea
		)
	}

	func fillingParent(
		insets: Insets? = nil,
		horizontalInsets: CGFloat = 0,
		verticalInsets: CGFloat = 0,
		relativeToSafeArea: Bool = false
	) -> Layout<ChildNode<Node>> {
		let horizontal = Length(floatLiteral: Float(insets?.value ?? horizontalInsets))
		let vertical = Length(floatLiteral: Float(insets?.value ?? verticalInsets))
		return stickingToParentEdges(
			left: horizontal,
			right: horizontal,
			top: vertical,
			bottom: vertical,
			relativeToSafeArea: relativeToSafeArea
		)
	}
}
