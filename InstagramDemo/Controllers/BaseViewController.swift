//
//  BaseViewController.swift
//  InstagramDemo
//
//  Created by Nuriddin Jumaev on 12/2/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    //first load func
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    
//MARK: - Methods
    
    func appDelegate()-> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func sceneDelegate()->SceneDelegate{
        return ((UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)!)
    }
    

}
