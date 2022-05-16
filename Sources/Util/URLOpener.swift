//
//  URLOpener.swift
//  SendBirdUIKit-Sample
//
//  Created by Ahmed Elgendy on 16.05.2022.
//  Copyright © 2022 SendBird, Inc. All rights reserved.
//

import UIKit

public class URLOpener {
    public static let shared = URLOpener()
    
    public var opener: URLOpeningProtocol = DefaultURLOpener()
    
    func open(_ url: URL) {
        opener.open(url)
    }
    
}

public protocol URLOpeningProtocol {
    func open(_ url: URL)
}

public class DefaultURLOpener: URLOpeningProtocol {
    public func open(_ url: URL) {
        UIApplication.shared.open(url, options: [.universalLinksOnly : true]) { (success) in
            if !success {
                //open normally
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
