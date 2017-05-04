//
//  CustomImageView.swift
//  Instergram-Firebase
//
//  Created by Xiaohao Li on 2017/5/3.
//  Copyright © 2017年 Xiaohao Li. All rights reserved.
//

import Foundation
import UIKit

class CustomImageView: UIImageView {
    
    var lastURLUsedToLoadImage: String?
    
    func loadImage(urlString: String) {
        print("loading image...")
        
        lastURLUsedToLoadImage = urlString
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, respon, err) in
            if let err  = err {
                print("error", err)
            }
            
            if url.absoluteString != self.lastURLUsedToLoadImage {
                return
            }
            
            guard let imageData = data else { return }
            
            let photoImage = UIImage(data: imageData)
            
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
                
            }
            }.resume()
    }
}
