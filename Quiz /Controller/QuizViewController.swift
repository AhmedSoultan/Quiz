//
//  QuizViewController.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!

    //MARK: - Properties
    var questionsBank:[Question] = []
    var currentQuestionIndex:Int = 0
    var playerScore:Int = 0
    var timer:Timer!
    let timeConstraintSeconds:Float = 10
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        questionsBank = QuestionsGenerator.generateQuestions()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if randomizeQuestions {
            questionsBank.shuffle()
        }
        startNewGame()
        
    }
   //MARK: - IBActions
    fileprivate func decideNext() {
        if let nextQuestion = nextQuestion() {
            populateView(question: nextQuestion)
        }
        else {
            // show alert that quiz is completed
            
            let alert = UIAlertController(title: "Quiz Completed!", message: "You've answered all questions, let's see if you've done great!", preferredStyle: .alert)
            
            let showResultAction = UIAlertAction(title: "Show Score", style: .default) { (_) in
                print("user did tap show score action")
                self.showScoreScene()
            }
            
            alert.addAction(showResultAction)
            
            DispatchQueue.main.async {
                self.present(alert, animated: true)
            }
        }
    }
    
    @IBAction func answerButtonAction(_ sender: UIButton) {
        
        guard let tappedButtonTitle = sender.currentTitle else {return}
        
        let currentQuestion = questionsBank[currentQuestionIndex]
        var isCorrectAnswer:Bool!
        switch tappedButtonTitle {
        case "True":
            print("user did tap true")
            //user did tap true button
            if currentQuestion.answer == true {
                playerScore += 1
                isCorrectAnswer = true
            }
            else {
                isCorrectAnswer = false
            }
        default:
            //user did tap false button
            print("user did tap false")
            if currentQuestion.answer == false {
                playerScore += 1
                isCorrectAnswer = true
            }
            else {
                isCorrectAnswer = false
            }
        }
        
        flashBackground(isCorrect: isCorrectAnswer)
        decideNext()
        
    }
    //MARK: - Custom Functions
    func nextQuestion() -> Question? {
        if currentQuestionIndex < questionsBank.count - 1 {
            currentQuestionIndex += 1
            return questionsBank[currentQuestionIndex]
        }
        return nil
    }
    func startNewGame() {
        
        currentQuestionIndex = 0
        playerScore = 0
   
        if let nextQuestion = nextQuestion() {
            
            populateView(question: nextQuestion)
        }
    }
    
    fileprivate func populateView(question:Question) {
        if addTimeConstraint {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(QuizViewController.updateTimeProgressView), userInfo: nil, repeats: true)
        }
        else {
            progressView.isHidden = true
        }
//        progressView.isHidden = !addTimeConstraint
        
        
        questionLabel.text = question.text
        if let questionImageName = question.imageName {
            questionImageView.image = UIImage(named: questionImageName)
        }
        else {
            questionImageView.image = UIImage(named: "no-image")
        }
        
        navigationItem.title = "\(currentQuestionIndex + 1) / \(questionsBank.count)"
    }
    
    @objc func updateTimeProgressView() {
        if progressView.progress >= 1 {
            timer.invalidate()
            decideNext()
        }
        else {
            progressView.progress += 1 / (timeConstraintSeconds * 10)
        }
    }
    
    func showScoreScene() {
        let scoreVC = storyboard?.instantiateViewController(withIdentifier: "scoreScene") as! ScoreViewController
        scoreVC.playerScore = playerScore
        scoreVC.numberOfQuestions = questionsBank.count
        navigationController?.pushViewController(scoreVC, animated: true)
    }
    
    func flashBackground(isCorrect:Bool) {
        var flashColor:UIColor!
        flashColor = isCorrect ? .green : .red
        self.view.backgroundColor = flashColor
        UIView.animate(withDuration: 0.3) {
            self.view.backgroundColor = .white
        }
    }
    
}
