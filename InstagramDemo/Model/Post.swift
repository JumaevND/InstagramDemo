//
//  Post.swift
//  InstagramDemo
//
//  Created by Nuriddin Jumaev on 12/2/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import Foundation

class Post{
    var fullname: String? = ""
    var user_img: String? = ""
    var post_img1: String? = ""
    var post_img2: String? = ""
    var post_img3: String? = ""
    var post_story:String? = ""
    var post_time:String? = ""
    init(fullname: String,user_img: String,post_img1: String, post_img2:String, post_img3:String, post_story:String, post_time:String) {
        self.fullname = fullname
        self.user_img = user_img
        self.post_img1 = post_img1
        self.post_img2 = post_img2
        self.post_img3 = post_img3
        self.post_story = post_story
        self.post_time = post_time
    }
}
