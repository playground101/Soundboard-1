//
//  ViewController.swift
//  Soundboard
//
//  Created by AnishG on 9/24/18.
//  Copyright © 2018 AnishG. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //plays sound when selected -Max
    @IBAction func playSound(_ sender: UIButton) {
        print("button clicked")
        let label = sender.titleLabel?.text
        switch label {
        case "1":
            play(for: "que 1.mp3")
        case "2" :
            play(for: "que 2.mp3")
        case "3" :
            play(for: "que 3.mp3")
        case "4" :
            play(for: "que 4.mp3")
        case "5" :
            play(for: "que 5.mp3")
        case "6" :
            play(for: "que 6.mp3")
        case "7" :
            play(for: "que 7.mp3")
        case "8" :
            play(for: "que 8.mp3")
        case "9" :
            play(for: "que 9.mp3")
        case "10" :
            play(for: "que 10.mp3")
        case "11" :
            play(for: "que 11.mp3")
        case "12" :
            play(for: "que 12.mp3")
        case "13" :
            play(for: "que 13.mp3")
        default:
            print("Not Found")
        }
    }
    func play(for sound: String) {
      
        let path = Bundle.main.path(forResource: sound, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("coundn't load the file")
        }
    }
}

