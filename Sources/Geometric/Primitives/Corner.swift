// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import enum Metric.Corner

public extension Styled {
	func cornerRadius(named name: Corner.Radius.Name) -> Self {
		base.layer.cornerRadius = name(Corner.Radius.self).value
		return self
	}
}

// MARK: -
public extension Styled where Base: UIButton {
	func cornerRadius(named name: Corner.Radius.Name) -> Self {
		base.configuration?.background.cornerRadius = name(Corner.Radius.self).value
		return self
	}
}
