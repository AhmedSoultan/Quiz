//
//  SettingsViewController.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var flashAnswersSwitch: UISwitch!
    @IBOutlet weak var randomQuestionsSwitch: UISwitch!
    @IBOutlet weak var timeConstraintSwitch: UISwitch!
    @IBOutlet weak var numberOfQuestionsSlider: UISlider!
    @IBOutlet weak var numberOfQuestionsLabel: UILabel!
    
    private let numberOfQuestionsPerQuizSliderStep: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Settings"
        flashAnswersSwitch.isOn = flashAnswers
        randomQuestionsSwitch.isOn = randomizeQuestions
        numberOfQuestionsSlider.value = Float(numberOfQuestionsPerQuiz)
        numberOfQuestionsLabel.text = "\(numberOfQuestionsPerQuiz)"
        
//        numberOfQuestionsSlider.minimumValue = 5
        numberOfQuestionsSlider.maximumValue = 30
        numberOfQuestionsSlider.value = Float(numberOfQuestionsPerQuiz)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timeConstraintSwitch.setOn(addTimeConstraint, animated: true)
    }

    
    @IBAction func flashAnswersSwitchAction(_ sender: UISwitch) {
        flashAnswers = sender.isOn
    }
    
    @IBAction func randomQuestionsSwitchAction(_ sender: UISwitch) {
        randomizeQuestions = randomQuestionsSwitch.isOn
    }
    
    @IBAction func timeConstraintSwitchAction(_ sender: UISwitch) {
        addTimeConstraint = sender.isOn
    }
    
    
    @IBAction func numberOfQuestionsSliderAction(_ sender: UISlider) {
        
        let roundedValue = round(sender.value / numberOfQuestionsPerQuizSliderStep) * numberOfQuestionsPerQuizSliderStep
        sender.value = roundedValue
        numberOfQuestionsPerQuiz = Int(sender.value)
        numberOfQuestionsLabel.text = "\(numberOfQuestionsPerQuiz)"
        
    }
    
}
