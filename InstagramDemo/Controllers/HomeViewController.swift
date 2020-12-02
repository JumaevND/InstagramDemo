//
//  HomeViewController.swift
//  InstagramDemo
//
//  Created by Nuriddin Jumaev on 12/2/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    //ui obj
    @IBOutlet weak var tableView: UITableView!
    
    var items : Array<Post> = Array()
    
    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    
    func initViews(){
        
        setNavigationBar()
        tableView.dataSource = self
        tableView.delegate = self
        
        items.append(Post(fullname: "John Clark", user_img: "person2", post_img1: "p1", post_img2: "p2", post_img3: "p3", post_story: "Best friends forever!", post_time: "July 3"))
        items.append(Post(fullname: "Frank Johnson", user_img: "person1", post_img1: "p4", post_img2: "p7", post_img3: "p6", post_story: "Practice makes perfect!", post_time: "August 24"))
          items.append(Post(fullname: "Clara", user_img: "person4", post_img1: "p9", post_img2: "p10", post_img3: "p8", post_story: "Taking beautiful pictures!", post_time: "September 8"))
        
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
        
    }
    
    // MARK: - Action
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
}

//MARK: - TableView
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.fullNameLabel.text = item.fullname
        cell.timeLabel.text = item.post_time
        cell.profileImage.image = UIImage(named: item.user_img!)
        cell.postImage1.image = UIImage(named: item.post_img1!)
        cell.postImage2.image = UIImage(named: item.post_img2!)
        cell.postimage3.image = UIImage(named: item.post_img3!)
        cell.postStoryLabel.text = item.post_story
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000
    }
    
}
