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
    @IBOutlet weak var singularNounCombo: NSComboBox!
    @IBOutlet weak var pluralNounPopup: NSPopUpButton!
    @IBOutlet var phraseTextView: NSTextView!
    @IBAction func goButton(_ sender: AnyObject) {
        let pastTenseVerb = pastTenseVerbTextField.stringValue
        let singularNoun = singularNounCombo.stringValue
        let pluralNoun = pluralNouns[pluralNounPopup.indexOfSelectedItem]
        let phrase = phraseTextView.string ?? ""
        
        print("A \(singularNoun) \(pastTenseVerb) \(pluralNoun) and said, '\(phrase)'!");
    }
    
    var singularNouns: [String]!
    var pluralNouns: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        print("View controller instance with view: \(self.view)");
        pastTenseVerbTextField.stringValue = "ate";
        
        singularNouns = ["dog", "muppet", "ninja", "fat dude"];
        singularNounCombo.removeAllItems();
        singularNounCombo.addItems(withObjectValues: singularNouns);
        singularNounCombo.selectItem(at: 2);
        
        pluralNouns = ["tacos", "rainbows", "iPhones", "gold coins"];
        pluralNounPopup.removeAllItems();
        pluralNounPopup.addItems(withTitles: pluralNouns);
        pluralNounPopup.selectItem(at: 0);
        
        phraseTextView.string = "Nitro is the best Puggle!!!";
    }
    
}
