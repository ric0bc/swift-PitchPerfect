//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Mr.X on 24.09.17.
//  Copyright © 2017 Rick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        recordingLabel.text = "Recording in progress"
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record"
    }
    
}

