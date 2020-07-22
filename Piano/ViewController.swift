//
//  ViewController.swift
//  Piano
//
//  Created by guowei on 2020/7/22.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var XlyphonePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let oneDegree = CGFloat.pi / 180
        XlyphonePic.transform = CGAffineTransform.identity.rotated(by: oneDegree * 90)
    }


}

