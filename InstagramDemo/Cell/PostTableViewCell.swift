//
//  PostTableViewCell.swift
//  InstagramDemo
//
//  Created by Nuriddin Jumaev on 12/2/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    //ui obj
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var postImage1: UIImageView!
    @IBOutlet weak var postImage2: UIImageView!
    @IBOutlet weak var postimage3: UIImageView!
    @IBOutlet weak var postStoryLabel: UILabel!
    
    
    //first load func
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
