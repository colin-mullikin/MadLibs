//
//  RootViewController.swift
//  MadLibs
//
//  Created by Colin Mullikin on 12/25/16.
//  Copyright © 2016 Colin Mullikin. All rights reserved.
//

import Cocoa

class RootViewController: NSViewController {

    @IBOutlet weak var pastTenseVerbTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        print("View controller instance with view: \(self.view)");
        pastTenseVerbTextField.stringValue = "ate";
    }
    
}
