//
//  ThemeFont.swift
//  tip-Calci
//
//  Created by Ashish Jain on 12/04/24.
//

import UIKit

struct ThemeFont{
//    AvenirNext
    static func regular(ofSize size:CGFloat)->UIFont{
        return UIFont(name: "AvenirNext-Regular", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func bold(ofSize size:CGFloat)->UIFont{
        return UIFont(name: "AvenirNext-Bold", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func demiBold(ofSize size:CGFloat)->UIFont{
        return UIFont(name: "AvenirNext-DemiBold", size: size) ?? .systemFont(ofSize: size)
    }
}
