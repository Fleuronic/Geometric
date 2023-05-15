// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

import struct Metric.Styled

public extension UIView {
	static func containing(_ layout: AnyLayout) -> AnyLayout {
		UIView().addingLayout(layout)
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
