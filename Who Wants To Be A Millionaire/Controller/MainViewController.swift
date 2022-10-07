//
//  MainViewController.swift
//  Who Wants To Be A Millionaire
//
//  Created by Aleyna Mandacı on 28.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    @IBOutlet weak var price1: UILabel!
    @IBOutlet weak var price2: UILabel!
    @IBOutlet weak var price3: UILabel!
    @IBOutlet weak var price4: UILabel!
    @IBOutlet weak var price5: UILabel!
    @IBOutlet weak var price6: UILabel!
    @IBOutlet weak var price7: UILabel!
    @IBOutlet weak var price8: UILabel!
    @IBOutlet weak var price9: UILabel!
    @IBOutlet weak var price10: UILabel!
    @IBOutlet weak var audienceJokerButton: UIButton!
    @IBOutlet weak var phoneJokerButton: UIButton!
    var quizBrain = QuizBrain()
    var price = 0
    var earnedMoney = "0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            price += 1
            if price == 10 {
                let message = "1.000.000 TL değerindeki büyük ödülü kazandınız!"
                let alert = UIAlertController(
                    title: "Tebrikler! 🎉",
                    message: message,
                    preferredStyle: .alert)
                let restart = UIAlertAction(title: "Yeeyy!", style: .default, handler: {_ in  self.performSegue(withIdentifier: "toMainVC", sender: nil)})
                
                alert.addAction(restart)
                
                present(alert,animated: true,completion: nil)
            }else{
                quizBrain.nextQuestion()
            }
           
            
            
        } else {
            sender.backgroundColor = UIColor.red
            let message = "Yanlış cevap 🥺 \nDoğru cevap: \(quizBrain.getCorrectAnswer()) "
            let alert = UIAlertController(
                title: "Eyvah!",
                message: message,
                preferredStyle: .alert)
            let restart = UIAlertAction(title: "Tekrar oyna", style: .default, handler: {action in self.restartGame()})
            let backMain = UIAlertAction(title: "Anasayfaya dön", style: .default, handler: { _ in  self.performSegue(withIdentifier: "toMainVC", sender: nil)})
            
            alert.addAction(restart)
            alert.addAction(backMain)
            
            present(alert,animated: true,completion: nil)
            price = 10
            
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    
    }
    
    func restartGame() {
        quizBrain.questionNumber = 0
        quizBrain.score = 0
        quizBrain.randomNum = Int.random(in: 0...9)
        price = 0
        updateUI()
        phoneJokerButton.isEnabled = true
        audienceJokerButton.isEnabled = true
    }
    
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        choice4.setTitle(answerChoices[3], for: .normal)
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        choice4.backgroundColor = UIColor.clear
        
        switch price {
        case 0:
            price1.backgroundColor = .gray
            
            earnedMoney = "İlk sorudan çekildiniz 🥺"
        case 1:
            price2.backgroundColor = .gray
            price1.backgroundColor = UIColor.clear
            earnedMoney = "1.000  TL kazandınız!"
        case 2:
            price3.backgroundColor = .gray
            price2.backgroundColor = UIColor.clear
            
            earnedMoney = "3.000 TL kazandınız!"
        case 3:
            price4.backgroundColor = .gray
            price3.backgroundColor = UIColor.clear
            
            earnedMoney = "5.000 TL kazandınız!"
        case 4:
            price5.backgroundColor = .gray
            price4.backgroundColor = UIColor.clear
            
            earnedMoney = "7.500 TL kazandınız!"
        case 5:
            price6.backgroundColor = .gray
            price5.backgroundColor = UIColor.clear
            
            earnedMoney = "15.000 TL kazandınız!"
        case 6:
            price7.backgroundColor = .gray
            price6.backgroundColor = UIColor.clear
            
            earnedMoney = "30.000 TL kazandınız!"
        case 7:
            price8.backgroundColor = .gray
            price7.backgroundColor = UIColor.clear
            
            earnedMoney = "60.000 TL kazandınız!"
        case 8:
            price9.backgroundColor = .gray
            price8.backgroundColor = UIColor.clear
            
            earnedMoney = "125.000 TL kazandınız!"
        case 9:
            price10.backgroundColor = .gray
            price9.backgroundColor = UIColor.clear
            
            earnedMoney = "250.000 TL kazandınız!"
        default:
            price1.backgroundColor = UIColor.clear
            price2.backgroundColor = UIColor.clear
            price3.backgroundColor = UIColor.clear
            price4.backgroundColor = UIColor.clear
            price5.backgroundColor = UIColor.clear
            price6.backgroundColor = UIColor.clear
            price7.backgroundColor = UIColor.clear
            price8.backgroundColor = UIColor.clear
            price9.backgroundColor = UIColor.clear
            price10.backgroundColor = UIColor.clear
        }
        
    }
    
    @IBAction func audienceJokerButtonPressed(_ sender: UIButton) {
        
        let correctAnswer = quizBrain.getCorrectAnswer()
        
        let message = "Seyircilerin %79'u doğru cevabın '\(correctAnswer)' olduğunu düşünüyor."
        let alert = UIAlertController(
            title: "Seyirci Joker Hakkı",
            message: message,
            preferredStyle: .alert)
        let restart = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        
        alert.addAction(restart)
        
        present(alert,animated: true,completion: nil)
        
        sender.isEnabled = false
        
    }
    
    @IBAction func phoneJokerButtonPressed(_ sender: UIButton) {
        let correctAnswer = quizBrain.getCorrectAnswer()
        
        let message = "Babanız doğru cevabın '\(correctAnswer)' olduğunu düşünüyor."
        let alert = UIAlertController(
            title: "Telefon Joker Hakkı",
            message: message,
            preferredStyle: .alert)
        let restart = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        
        alert.addAction(restart)
        
        present(alert,animated: true,completion: nil)
        
        sender.isEnabled = false
    }
    
    @IBAction func withdrawButtonPressed(_ sender: UIButton) {
        let message = "Çekilmek istediğinize emin misiniz?"
        let alert = UIAlertController(
            title: "",
            message: message,
            preferredStyle: .alert)
        let yes = UIAlertAction(title: "Evet", style: .default, handler: {_ in
            self.withdraw()
            self.performSegue(withIdentifier: "toMainVC", sender: nil)})
        
        
        let no = UIAlertAction(title: "Hayır", style: .default, handler: nil)
        
        alert.addAction(yes)
        alert.addAction(no)
        
        present(alert,animated: true,completion: nil)
        
    }
    
    func withdraw() -> UIAlertController {
        let message = "\(earnedMoney)"
        let alert = UIAlertController(
            title: "Tebrikler",
            message: message,
            preferredStyle: .alert)
        let yes = UIAlertAction(title: "Oleyy", style: .default, handler: {_ in  self.performSegue(withIdentifier: "toMainVC", sender: nil)})
        
        
        alert.addAction(yes)
        
        present(alert,animated: true,completion: nil)
        return alert
    }
    
    
    
}
