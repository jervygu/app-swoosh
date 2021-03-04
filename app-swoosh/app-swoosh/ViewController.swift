//
//  ViewController.swift
//  app-swoosh
//
//  Created by Jeff Umandap on 3/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2,
                              y: 50,
                              width: swoosh.frame.size.width,
                              height: swoosh.frame.height)
        
        bgImg.frame = view.frame
    }


}

