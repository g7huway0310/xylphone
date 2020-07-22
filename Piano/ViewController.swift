//
//  ViewController.swift
//  Piano
//
//  Created by guowei on 2020/7/22.
//  Copyright © 2020 guowei. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var XlyphonePic: UIImageView!
    var player:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func SoundButton(_ sender: UIButton) {
       playSound(SoundNane: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        
        sender.alpha = 1.0
        }
    }
    
    func playSound(SoundNane:String) {
        let url = Bundle.main.url(forResource: SoundNane, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
       player?.play()
                
    }
}

