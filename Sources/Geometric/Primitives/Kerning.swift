// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import struct Metric.Kerning

public extension Styled where Base: UITextField {
	func kerning(named name: Kerning.Name) -> Self {
		base.defaultTextAttributes.updateValue(name(Kerning.self).value, forKey: .kern)
		return self
	}
}
