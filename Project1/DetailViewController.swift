//
//  DetailViewController.swift
//  Project1
//
//  Created by Oğulcan Aşa on 21.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var numberOfImages: Int?
    var positionOfPicture: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(positionOfPicture!) of \(numberOfImages!)" // shows "Picture X of Y", where Y is the total number of images and X is the picture's position in the array
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
