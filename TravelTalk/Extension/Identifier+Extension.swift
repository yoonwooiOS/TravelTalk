//
//  Identifier+Extension.swift
//  TravelTalk
//
//  Created by 김윤우 on 6/5/24.
//

import UIKit

protocol ReuseIdentifierProtocol {
    
    static var identifier: String { get }
    
}


extension UITableViewCell:ReuseIdentifierProtocol {
    static var identifier: String {
        return String(describing: self)
    }
}
    extension UIViewController:ReuseIdentifierProtocol {
        static var identifier:String {
            return String(describing: self)
        }
}
