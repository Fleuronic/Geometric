// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import Layoutless

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
