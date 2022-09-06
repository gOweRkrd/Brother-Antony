//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Мария Родионова on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    let catSound = SimpleSound( named:"meow")
    let dogSound = SimpleSound( named:"woof")
    let cowSound = SimpleSound( named:"moo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func catButtonDidPressed(_ sender: Any) {
        animalSoundLabel.text = "Miew!"
       
        catSound.play()
    }
    
    
    @IBAction func dogButtonDidPressed(_ sender: Any) {
        animalSoundLabel.text = "gav gav"
        dogSound.play()
    }
    
    @IBAction func cowButtonDidPressed(_ sender: Any) {
        animalSoundLabel.text = "muuuu!!!"
        cowSound.play()
    }
}

