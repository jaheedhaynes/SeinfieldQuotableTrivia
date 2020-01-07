//
//  ViewController.swift
//  SeinfieldQuotableTrivia
//
//  Created by Jaheed Haynes on 1/6/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteTally: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var answerBarView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    
   
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuoteBank()
    
    var quoteNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuote()
        updateUI()
    }

    @IBAction func resetButton(_ sender: UIButton) {
        restartGame()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
        showAlert(title: "Correct 🙌🏽", message: "")
            score += 1
            
        }else{
            showAlert(title: "Wrong 🤪", message: "")
            
            
        }
        
        quoteNumber += 1
        updateQuote()
        
    }
    
    func updateQuote(){
        
        if quoteNumber <= allQuestions.list.count - 1{

            quoteLabel.text = allQuestions.list[quoteNumber].question
            optionA.setTitle(allQuestions.list[quoteNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[quoteNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[quoteNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[quoteNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[quoteNumber].correctAnswer
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Nice Job 👍🏽", message: "End of Game. Start Again?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartGame()})
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        quoteTally.text = "\(quoteNumber + 1)/\(allQuestions.list.count)"
        answerBarView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(quoteNumber + 1)
        
    }
    
    func restartGame(){
        score = 0
        quoteNumber = 0
        updateQuote()
        
    }

}

extension UIViewController {
  func showAlert(title: String, message: String, completion: ((UIAlertAction) -> Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default, handler: completion)
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
  }
}
