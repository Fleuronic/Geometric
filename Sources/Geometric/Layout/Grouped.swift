// Copyright © Fleuronic LLC. All rights reserved.

import Layoutless

@resultBuilder public struct Grouped {
	public static func buildBlock(_ layouts: AnyLayout...) -> AnyLayout {
		group(layouts)
	}
}
