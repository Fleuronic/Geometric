// Copyright © Fleuronic LLC. All rights reserved.

import enum Metric.Border

public extension Styled {
	func borderWidth(named name: Border.Width.Name) -> Self {
		base.layer.borderWidth = name(Border.Width.self).value
		return self
	}
}

