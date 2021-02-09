//
//  File.swift
//  Tracker iOS
//
//  Created by Théo Damaville on 15/06/2018.
//

import Foundation

func pathFor(asset: String) -> String? {
	#if SWIFT_PACKAGE
	return Bundle
		.module
		.path(forResource: asset,
					ofType: "png")
	#else
	let bnd = Bundle(for: Tracker.self)
		.path(forResource: asset,
					ofType: "png",
					inDirectory: "Images",
					forLocalization: nil)

	return bnd

	#endif
}
