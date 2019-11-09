//
//  ViewController.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playButtonAction(_ sender: UIButton) {
        let quizVC = storyboard?.instantiateViewController(withIdentifier: "quizScene") as! QuizViewController
        navigationController?.pushViewController(quizVC, animated: true)
    }
    
    
    @IBAction func settingsButtonAction(_ sender: UIButton) {
        let settingsVC = storyboard?.instantiateViewController(withIdentifier: "settingsScene") as! SettingsViewController
        navigationController?.pushViewController(settingsVC, animated: true)
    }
}

