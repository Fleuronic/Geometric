// Copyright © Fleuronic LLC. All rights reserved.

import enum Layoutless.Length
import struct Metric.Size
import struct Layoutless.Layout
import protocol Layoutless.LayoutProtocol
import protocol Layoutless.Anchorable

public extension LayoutProtocol where Node: Anchorable {
	func size(_ size: Size) -> Layout<Node> {
		sizing(
			toWidth: .init(floatLiteral: Float(size.width.value)),
			height: .init(floatLiteral: Float(size.height.value))
		)
	}

	func width(_ width: Size.Width) -> Layout<Node> {
		sizing(toWidth: .init(floatLiteral: Float(width.value)))
	}

	func height(_ height: Size.Height) -> Layout<Node> {
		sizing(toHeight: .init(floatLiteral: Float(height.value)))
	}
}
