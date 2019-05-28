//
//  RWPickFlavor.swift
//  RWPickFlavor
//
//  Created by Milan Jayawardane on 5/28/19.
//  Copyright © 2019 Milan Jayawardane. All rights reserved.
//

import UIKit
import Alamofire

public protocol RWPickFlavorProtocol {
    func didCallHello()
}

open class RWPickFlavor: NSObject {

    public static let shared = RWPickFlavor()
    
    public var delegate: RWPickFlavorProtocol?
    
    open func hello(){
        debugPrint("Hello from RWPickFlavor!")
        RWPickFlavor.shared.delegate?.didCallHello()
        
        Alamofire.request("https://apple.com").downloadProgress { (progress) in
            debugPrint(progress)
        }
    }
}
