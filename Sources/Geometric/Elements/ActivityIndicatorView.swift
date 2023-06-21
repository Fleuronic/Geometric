// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public extension UIActivityIndicatorView {
    static var `default`: Styled<UIActivityIndicatorView> {
        .init()
    }
    
    static func style(_ style: UIActivityIndicatorView.Style) -> Styled<UIActivityIndicatorView> {
        .init(base: .init(style: style))
    }
}
