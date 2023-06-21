// Copyright © Fleuronic LLC. All rights reserved.

import Layoutless

@resultBuilder public struct LayoutBuilder {
    public static func buildBlock(_ layouts: AnyLayout...) -> [AnyLayout] {
		layouts
	}

	public static func buildBlock(_ layouts: [AnyLayout]) -> [AnyLayout] {
		layouts
	}
}
