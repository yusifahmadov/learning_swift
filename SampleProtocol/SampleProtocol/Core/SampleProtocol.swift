//
//  SampleProtocol.swift
//  SampleProtocol
//
//  Created by Yusif Ahmadov on 16.08.23.
//

import Foundation
import UIKit

enum UserType{
    case ADMIN
    case USER
}

protocol SampleProtocol : UIViewController{
    var userType : UserType {get}
    func changeUserTypeBackgroundColor()
}

extension SampleProtocol {
    var userType : UserType{
        get{return .ADMIN}
    }
    func changeUserTypeBackgroundColor(){
        view.backgroundColor = userType == UserType.ADMIN ? .black : .red
    }
}

