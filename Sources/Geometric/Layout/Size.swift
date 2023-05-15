// Copyright © Fleuronic LLC. All rights reserved.

import Layoutless

import struct Metric.Size

public extension LayoutProtocol where Node: Anchorable {
	func size(named name: Size.Name) -> Layout<Node> {
		sizing(
			toWidth: .init(floatLiteral: .init(name(Size.self).width.value)),
			height: .init(floatLiteral: .init(name(Size.self).height.value))
		)
	}

	func width(named name: Size.Width.Name) -> Layout<Node> {
		sizing(toWidth: .init(floatLiteral: .init(name(Size.Width.self).value)))
	}

	func height(named name: Size.Height.Name) -> Layout<Node> {
		sizing(toHeight: .init(floatLiteral: .init(name(Size.Height.self).value)))
	}
}
