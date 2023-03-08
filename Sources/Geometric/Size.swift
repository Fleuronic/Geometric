// Copyright © Fleuronic LLC. All rights reserved.

import enum Layoutless.Length
import struct Metric.Size
import struct Layoutless.Layout
import protocol Layoutless.LayoutProtocol
import protocol Layoutless.Anchorable

public extension LayoutProtocol where Node: Anchorable {
	func size(named name: Size.Name) -> Layout<Node> {
		sizing(
			toWidth: .init(floatLiteral: Float(name(Size.self).width.value)),
			height: .init(floatLiteral: Float(name(Size.self).height.value))
		)
	}

	func width(named name: Size.Width.Name) -> Layout<Node> {
		sizing(toWidth: .init(floatLiteral: Float(name(Size.Width.self).value)))
	}

	func height(named name: Size.Height.Name) -> Layout<Node> {
		sizing(toHeight: .init(floatLiteral: Float(name(Size.Height.self).value)))
	}
}
