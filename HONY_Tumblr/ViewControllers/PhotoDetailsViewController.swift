//
//  PhotoDetailsViewController.swift
//  HONY_Tumblr
//
//  Created by Adam vanWestrienen on 9/18/18.
//  Copyright © 2018 Adam vanWestrienen. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var post: [String: Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

    
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String

            let url = URL(string: urlString)
            photoImageView.af_setImage(withURL: url!)

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
