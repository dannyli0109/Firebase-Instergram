//
//  Post.swift
//  Instergram-Firebase
//
//  Created by Xiaohao Li on 2017/5/2.
//  Copyright © 2017年 Xiaohao Li. All rights reserved.
//

import Foundation


struct Post {
    let imageUrl: String
    
    init(dictionary: [String: Any])  {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
