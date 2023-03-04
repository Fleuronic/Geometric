// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGRect
import class UIKit.UIView
import class Foundation.NSCoder
import func Layoutless.EmptyLayout
import protocol Layoutless.Anchorable
import struct Layoutless.Layout

open class View<Base: UIView>: UIView {
	open var layout: Layout<Base> {
		fatalError()
	}

	// MARK: UIView
	public override init(frame: CGRect) {
		super.init(frame: frame)

		layout.fillingParent().layout(in: self)
	}

	// MARK: NSCoding
	public required init(coder: NSCoder) {
		fatalError()
	}
}
