// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless
import Metric

public extension UIStackView {
	static func vertical(
		spacing: Spacing.Vertical = .zero,
		@LayoutBuilder layout: () -> [AnyLayout],
		configure: @escaping (UIStackView) -> Void = { _ in }
	) -> Layout<UIStackView> {
		stack(
			layout(),
			axis: .vertical,
			spacing: spacing.value,
			distribution: .fill,
			alignment: .fill,
			configure: configure
		)
	}

	static func horizontal(
		spacing: Spacing.Horizontal = .zero,
		@LayoutBuilder layout: () -> [AnyLayout],
		configure: @escaping (UIStackView) -> Void = { _ in }
	) -> Layout<UIStackView> {
		stack(
			layout(),
			axis: .horizontal,
			spacing: spacing.value,
			distribution: .fill,
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
}

