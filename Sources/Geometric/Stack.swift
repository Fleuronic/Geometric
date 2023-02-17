// Copyright © Fleuronic LLC. All rights reserved.

import enum Metric.Spacing
import class UIKit.UIStackView
import struct Layoutless.Layout
import func Layoutless.stack
import protocol Layoutless.AnyLayout

public extension UIStackView {
	static func vertical(
		spacing: Spacing.Vertical = .zero,
		alignment: Alignment = .fill,
		@LayoutBuilder layout: () -> [AnyLayout],
		configure: @escaping (UIStackView) -> Void = { _ in }
	) -> Layout<UIStackView> {
		stack(
			layout(),
			axis: .vertical,
			spacing: spacing.value,
			distribution: .fill,
			alignment: alignment,
			configure: configure
		)
	}

	static func horizontal(
		spacing: Spacing.Horizontal = .zero,
		distribution: Distribution = .fill,
		@LayoutBuilder layout: () -> [AnyLayout],
		configure: @escaping (UIStackView) -> Void = { _ in }
	) -> Layout<UIStackView> {
		stack(
			layout(),
			axis: .horizontal,
			spacing: spacing.value,
			distribution: distribution,
			alignment: .fill,
			configure: configure
		)
	}
}

// MARK: -
@resultBuilder public struct LayoutBuilder {
	public static func buildBlock(_ layouts: AnyLayout?...) -> [AnyLayout] {
		layouts.compactMap { $0 }
	}

	public static func buildBlock(_ layouts: [AnyLayout?]) -> [AnyLayout] {
		layouts.compactMap { $0 }
	}
}

