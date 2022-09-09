//
//  ViewController.swift
//  MemeMaker2
//
//  Created by Мария Родионова on 09.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    var topChoices = [CaptionsOption] ()
    var bottomChoices = [CaptionsOption] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValued()
        
    }

    func configureTopSegmentControl()  {
        topCaptionSegmentControl.removeAllSegments()
        
        let option1 = CaptionsOption(emoji: "🕶", text: "You know wat's cool?")
        let option2 = CaptionsOption(emoji: "💥", text: "You know what makes me mad?")
        let option3 = CaptionsOption(emoji: "💕", text: "You know what I love?")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }

    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoise = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoise.text
    }
    
    func selectInitValued()  {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = bottomChoices.first?.text
    }
    
 
    
    
    
    func configureBottomSegmentControl()  {
        bottomCaptionSegmentControl.removeAllSegments()
        
        let option1 = CaptionsOption(emoji: "🐱", text: "Cats wearing hats")
        let option2 = CaptionsOption(emoji: "🐕", text: "Dogs carrying logs")
        let option3 = CaptionsOption(emoji: "🐒", text: "Monkeys being funky")
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }


    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoise = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoise.text
    }
    
}

