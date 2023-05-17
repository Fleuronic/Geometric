// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public extension UIButton {
	static var `default`: Styled<UIButton> {
		type(.system)
	}

	static func type(_ type: UIButton.ButtonType) -> Styled<UIButton> {
		.init(base: .init(type: type))
	}
}
