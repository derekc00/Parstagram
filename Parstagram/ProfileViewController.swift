//
//  ProfileViewController.swift
//  Parstagram
//
//  Created by Derek Chang on 2/24/19.
//  Copyright © 2019 Derek Chang. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage


class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var numPostsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let query = PFQuery(className: "Posts")
        
        query.countObjectsInBackground { (count, error) in
            
            self.numPostsLabel.text = String(count)
        }
    }
    

    
    
    

    @IBAction func editProfile(_ sender: Any) {
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
