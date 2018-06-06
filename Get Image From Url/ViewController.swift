//
//  ViewController.swift
//  Get Image From Url
//
//  Created by nguyễn hữu đạt on 5/28/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let Url_Image = URL(string: "https://tudienwiki.com/wp-content/uploads/2016/10/jang-mi-2.jpg")
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.contentMode = .scaleAspectFill
        let data = try! Data(contentsOf: Url_Image!)
        let imagee = UIImage(data: data)
        self.imageView.image = imagee
        imageView.contentMode = .scaleAspectFill
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

