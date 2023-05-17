// Copyright © Fleuronic LLC. All rights reserved.

import struct Metric.Opacity

public extension Styled {
	func opacity(named name: Opacity.Name) -> Self {
		base.alpha = name(Opacity.self).value
		return self
	}
}
