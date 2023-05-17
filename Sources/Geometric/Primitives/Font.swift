// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import enum Metric.Font

public extension UIFont {
	var bold: Self {
		weight(.bold)
	}

	var italic: Self {
		traits(.traitItalic)
	}

	var boldItalic: Self {
		traits([.traitBold, .traitItalic])
	}

	func weight(_ weight: UIFont.Weight) -> Self {
		var attributes = fontDescriptor.fontAttributes
		var traits = attributes as? [UIFontDescriptor.TraitKey: Any] ?? [:]
		traits[.weight] = weight
		attributes[.traits] = traits

		return .init(
			descriptor: .init(fontAttributes: attributes),
			size: pointSize
		)
	}

	func traits(_ traits: UIFontDescriptor.SymbolicTraits) -> Self {
		.init(
			descriptor: fontDescriptor.withSymbolicTraits(traits) ?? fontDescriptor,
			size: pointSize
		)
	}

	func design(_ design: UIFontDescriptor.SystemDesign) -> Self {
		.init(
			descriptor: fontDescriptor.withDesign(design) ?? fontDescriptor,
			size: pointSize
		)
	}

	static func size(named name: Font.Size.Name) -> UIFont {
		.systemFont(ofSize: name(Font.Size.self).value)
	}
}
