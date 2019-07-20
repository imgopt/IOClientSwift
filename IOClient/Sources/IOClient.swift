//
//  IOClient.swift
//  IOClient
//
//  Created by BHAVESH on 20/07/19.
//  Copyright © 2019 imageopt. All rights reserved.
//

import Foundation
import UIKit
public class IOClient {
    
    class public func constructURL(imageURL:String, imageSize:CGSize, crop:Bool ) -> URL? {
        let scale = UIScreen.main.scale
        
        if (imageSize.width == 0 && imageSize.height == 0 ) {
            // "Both image width and height cannot be zero"
            return nil
        }
        
        if var components = URLComponents(string:imageURL) {
            components.queryItems = [
                URLQueryItem(name: "w", value: String(Int(imageSize.width*scale))),
                URLQueryItem(name: "h", value: String(Int(imageSize.height*scale))),
            ]
            if crop {
                components.queryItems?.append(URLQueryItem(name: "c", value: "true"))
            }
            return components.url;
        }
        return nil
    }

    class public func constructURL(imageURL:String, imageView:UIImageView, crop:Bool, completionHandler: @escaping (_ imageOptURL: URL?) -> Void){
        DispatchQueue.main.async(execute: {() -> Void in
            let imageOptURL = self.constructURL(imageURL: imageURL, imageSize: imageView.frame.size, crop: crop)
            completionHandler(imageOptURL)
        })
    }
    
}
