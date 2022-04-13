//
//  String+Localize.swift
//  Localizations
//
//  Created by nayhan on 13.04.2022.
//

import Foundation

extension String{
    public static func localize(_ key: String ) -> String {
        return NSLocalizedString(key, comment: "")
    }
}
