//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Lashaun Corinna on 11/16/22.
//

import UIKit

class PhotoViewController: UIViewController {

    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }

    @IBAction func shareAction(_ sender: UIButton) {
        let shareControllet = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareControllet.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                 
            }
            
        }
        present(shareControllet, animated: true, completion: nil)
    }
    
}
