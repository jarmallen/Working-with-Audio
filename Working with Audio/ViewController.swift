//
//  ViewController.swift
//  Working with Audio
//
//  Created by Jared Allen on 3/28/16.
//  Copyright © 2016 Jared Allen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("beethoven-67-1-pfaul", ofType: ".mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioFilePath))

            
        } catch {
            
            // Process error here
            
        }

        
    }

    @IBAction func play(sender: AnyObject) {
        
         player.play()
        
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()

    }
    
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
   


}

