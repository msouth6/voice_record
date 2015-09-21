//
//  ViewController.swift
//  voice_record
//
//  Created by Matt Southwell on 9/21/15.
//  Copyright © 2015 Matt Southwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden=true
        recordButton.enabled=true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordLabel.hidden=false
        stopButton.hidden=false
        recordButton.enabled=false
        print("in recordAudio")
    }

    @IBAction func stopRecord(sender: AnyObject) {
        recordLabel.hidden=true
        print("in stopRecord")
    }
}

