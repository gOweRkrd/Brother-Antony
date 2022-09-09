//
//  ViewController.swift
//  Камень,ножницы,бумага
//
//  Created by Мария Родионова on 05.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetButton.isHidden = true
    }
    
    func play(_ sign: Sign){
        let computerSign = randomSign()
        robotButton.setTitle(computerSign.emoji, for: .normal)
        
        switch sign {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        resetButton.isHidden = false
        let result = sign.takeTurn(computerSign)
        switch result {
        case .start:
          reset()
        case .win:
            statusLabel.text = "Win !"
            self.view.backgroundColor = UIColor.green
        case .lose:
            statusLabel.text = "Lose !"
            self.view.backgroundColor = UIColor.red
        case .draw:
            statusLabel.text = "Draw !"
            self.view.backgroundColor = UIColor.blue
        }
    }
    
    func reset () {
        
        statusLabel.text = "Rock,scissors,paper !"
        self.view.backgroundColor = UIColor.white
        robotButton.setTitle ("👾", for: .normal)
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        resetButton.isHidden = true
    }
    //MARK: - IBaction
    
    
    @IBAction func rockButtonPressed(_ sender: Any) {
        play(.rock)
    }
    
    
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        play(.scissors)
    }
    

    @IBAction func paperButtonPressed(_ sender: Any) {
        play(.paper)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        reset()
    }
    
}


