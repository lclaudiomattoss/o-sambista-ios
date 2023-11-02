//
//  UIColor+Extension.swift
//  OSambista
//
//  Created by Luiz Claudio Mattos da Silva on 02/11/23.
//

import Foundation
import UIKit

enum AssetsColor : String {

    case blue
    case green
    case gray
    case textFieldColor
    case loginBackground
    case tabBarBackround
    case newGray
    case Color
    case gradient1
    case gradient2
    case line
    case darkBlue
    case titles
    case gray2

}

extension UIColor{
    
    static func appColor(_ name: AssetsColor) -> UIColor? {
        return UIColor(named: name.rawValue)
    }

    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)

    }

    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }

}
