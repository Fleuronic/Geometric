// Copyright © Fleuronic LLC. All rights reserved.

import enum Layoutless.Length
import struct Metric.Height
import struct Layoutless.Layout
import protocol Layoutless.LayoutProtocol
import protocol Layoutless.Anchorable

public extension LayoutProtocol where Node: Anchorable {
	func height(_ height: Height) -> Layout<Node> {
		let length = Length(floatLiteral: Float(height.value))
		return sizing(toHeight: length)
	}
}
