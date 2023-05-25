// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public extension UITableView {
	static var plain: Styled<UITableView> {
		.init()
	}
    
    static func style(_ style: UITableView.Style) -> Styled<UITableView> {
        .init(base: .init(frame: .zero, style: style))
    }
}
