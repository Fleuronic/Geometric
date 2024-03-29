// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

@dynamicMemberLookup
public struct Styled<Base: UIView> {
	public private(set) var base: Base

	public init(base: Base = .init()) {
		self.base = base
	}
}

// MARK: -
public extension Styled {
	subscript<Value>(dynamicMember keyPath: WritableKeyPath<Base, Value>) -> (Value) -> Self {
		{
			var base = self.base
			base[keyPath: keyPath] = $0
			return .init(base: base)
		}
	}
}
