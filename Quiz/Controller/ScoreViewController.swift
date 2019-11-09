//
//  ScoreViewController.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var scoreImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var playerScore:Int!
    var numberOfQuestions:Int!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Score"
        
        let homeBarButtonItem = UIBarButtonItem(title: "Home", style: .done, target: self, action: #selector(ScoreViewController.homeBarButtonItemAction))
        navigationItem.leftBarButtonItem = homeBarButtonItem
        
        
        let playAgainBarButtonItem = UIBarButtonItem(title: "Play Again", style: .done, target: self, action: #selector(ScoreViewController.playAgainBarButtonItemAction))
        navigationItem.rightBarButtonItem = playAgainBarButtonItem
        
        
        if playerScore != nil && numberOfQuestions != nil {
            scoreLabel.text = "\(playerScore!) / \(numberOfQuestions!)"
        }
        
       scoreImageView.image = scoreImage()        
    }
    

    @objc func homeBarButtonItemAction() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func playAgainBarButtonItemAction() {
        navigationController?.popViewController(animated: true)
    }
    
    private func scoreImage() -> UIImage {
        let scorePercentage = (Double(playerScore) / Double(numberOfQuestions)) * 100
        
        switch scorePercentage {
        case 80...100:
            //score is more than 80%
            return UIImage(named:"happy")!
        case 1..<50:
            //score is less than 50%
            return  UIImage(named:"sad")!
        case 0..<1:
            return UIImage(named:"donkey")!
        default:
            //scroe is less than 80% and more than 50%
            return UIImage(named:"ok")!
        }
    }

}
