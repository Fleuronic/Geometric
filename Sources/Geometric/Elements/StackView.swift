// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

import struct Metric.Styled

public extension Styled where Base: UIStackView {
	func layout(@LayoutBuilder content: () -> [AnyLayout]) -> Layout<UIStackView> {
		layout(arranging: content())
	}

	func layout(arranging views: [Styled<UIView>]) -> Layout<UIStackView> {
		layout(arranging: views.map(\.layout))
	}
}

// MARK: -
private extension Styled where Base: UIStackView {
	func layout(arranging content: [AnyLayout]) -> Layout<UIStackView> {
		.init { revertable in
			content.forEach { revertable.append($0.layout(in: base)) }
			return base
		}
	}
}

