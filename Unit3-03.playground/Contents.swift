
// Created by: Kay Lin
// Created on: 28th-Oct-2017
// Created for: ICS3U
// This program displays rock_paper_scissors game.


import PlaygroundSupport
import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel: UILabel!
    var rockButton: UIButton!
    var paperButton: UIButton!
    var scissorsButton: UIButton!
    var computerSelectionLabel: UILabel!
    var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        // UISEGMENTEDCONTROL 
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        // instruction label
        instructionLabel = UILabel()
        instructionLabel.text = "Make your choice"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // rock button
        rockButton = UIButton()
            // case select for rock
        rockButton.tag = 1
        rockButton.setTitle("Rock", for: .normal)
        rockButton.setTitleColor(.blue, for: .normal)
        rockButton.addTarget(self, action: #selector(outcome), for: .touchUpInside)
        view.addSubview(rockButton)
        rockButton.translatesAutoresizingMaskIntoConstraints = false
        rockButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        rockButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // paper button
        paperButton = UIButton()
            // case select for paper
        paperButton.tag = 2
        paperButton.setTitle("Paper", for: .normal)
        paperButton.setTitleColor(.blue, for: .normal)
        paperButton.addTarget(self, action: #selector(outcome), for: .touchUpInside)
        view.addSubview(paperButton)
        paperButton.translatesAutoresizingMaskIntoConstraints = false
        paperButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        paperButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        
        // scissors button
        scissorsButton = UIButton()
            // case select for scissors
        scissorsButton.tag = 3
        scissorsButton.setTitle("Scissors", for: .normal)
        scissorsButton.setTitleColor(.blue, for: .normal)
        scissorsButton.addTarget(self, action: #selector(outcome), for: .touchUpInside)
        view.addSubview(scissorsButton)
        scissorsButton.translatesAutoresizingMaskIntoConstraints = false
        scissorsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        scissorsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180).isActive = true
        
        // computer choice label
        computerSelectionLabel = UILabel()
        computerSelectionLabel.text = ""
        view.addSubview(computerSelectionLabel)
        computerSelectionLabel.translatesAutoresizingMaskIntoConstraints = false
        computerSelectionLabel.topAnchor.constraint(equalTo: rockButton.bottomAnchor, constant: 20).isActive = true
        computerSelectionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // result label
        resultLabel = UILabel()
        view.addSubview(resultLabel)
        resultLabel.text = ""
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.topAnchor.constraint(equalTo: computerSelectionLabel.bottomAnchor, constant: 20).isActive = true
        resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
        
        func outcome(sender:UIButton) {
            //
            var computer: [String] = ["rockButton", "paperButton", "scissorsButton"]
            var choice: [String] = ["Rock", "Paper", "Scissors"]
            var computerChoice = Int(arc4random_uniform(3))
            switch sender.tag {
            // rock
            case 1: if computer[computerChoice] == "rockBotton" {
                self.resultLabel.text = "Draw"
                self.computerSelectionLabel.text = "The computer chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "paperBotton" {
                self.resultLabel.text = "Computer win!"
                self.computerSelectionLabel.text = "The computer also chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "scissorsButton" {
                self.resultLabel.text = "You win!"
                self.computerSelectionLabel.text = "The computer chose: " + choice[computerChoice]
            }
                break
                
            // paper
            case 2: if computer[computerChoice] == "rockButton" {
                self.resultLabel.text = "You win!"
                self.computerSelectionLabel.text = "The computer chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "paperButton" {
                self.resultLabel.text = "Draw"
                self.computerSelectionLabel.text = "The computer also chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "scissorsButton" {
                self.resultLabel.text = "Computer win!"
                self.computerSelectionLabel.text = "The computer chose: " + choice[computerChoice]
            }
                break
                
            //scissors
            case 3: if computer[computerChoice] == "rockButton" {
                self.resultLabel.text = "Computer win!"
                self.computerSelectionLabel.text = "The computer chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "paperButton" {
                self.resultLabel.text = "You win!"
                self.computerSelectionLabel.text = "The computer also chose: " + choice[computerChoice]
            }
            else if computer[computerChoice] == "scissorsButton" {
                self.resultLabel.text = "Draw"
                self.computerSelectionLabel.text = "The computer also chose: " + choice[computerChoice]
            }
                break
                
            default: break
            }
        }
    
            
            
    
override var prefersStatusBarHidden: Bool {
        return true
    }
}
        

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


