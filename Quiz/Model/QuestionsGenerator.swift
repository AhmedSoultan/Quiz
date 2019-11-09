//
//  QuestionsGenerator.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import Foundation


class QuestionsGenerator {
    
    class func generateQuestions() -> [Question] {
    
        let question1 = Question(text: "There are 10 zeros in the number 1 million.", answer: false, imageName: nil)
        let question2 = Question(text: "The square root of 100 is five.", answer: false, imageName: nil)
        let question3 = Question(text: "Water is also called H2O.", answer: true, imageName: "q3")
        let question4 = Question(text: "Ice is made out of glass.", answer: false, imageName: "q4")
        let question5 = Question(text: "The fifth planet away from the sun in the solar system is Mars.", answer: false, imageName: "q5")
        let question6 = Question(text: "Fish sleep with their eyes closed.", answer: false, imageName: "q6")
        let question7 = Question(text: "If you mix all the colors of the rainbow together, you get white.", answer: true, imageName: "q7")
        let question8 = Question(text: "Hawaii is part of the United States.", answer: true, imageName: "q8")
        let question9 = Question(text: "Twenty minus 30 plus 10 equals zero.", answer: true, imageName: nil)
        let question10 = Question(text: "If you are facing the right wall of your room and turn 90 degrees right, then 180 degrees right, and finally 90 degrees left, you are facing the left wall of your room.", answer: true, imageName: "q10")
        let question11 = Question(text: "The fastest land animal in the world is the zebra.", answer: false, imageName: nil)
        let question12 = Question(text: "Yogurt is produced by bacterial fermentation of milk.", answer: true, imageName: "q12")
        let question13 = Question(text: "Your ears are important when it comes to staying balanced.", answer: true, imageName: "q13")
        let question14 = Question(text: "Snakes have slimy skin.", answer: false, imageName: "q14")
        let question15 = Question(text: "Mice live for up to 10 years.", answer: false, imageName: "q15")
        let question16 = Question(text: "Owls are far-sighted, meaning that anything within a few inches of their eyes can’t be seen properly.", answer: true, imageName: "q16")
        let question17 = Question(text: "An adult human body has over 500 bones.", answer: false, imageName: "q17")
        let question18 = Question(text: "Rabbits are born blind.", answer: true, imageName: "q18")
        let question19 = Question(text: "DNA is the shortened form of the term ‘Deoxyribonucleic acid’", answer: true, imageName: "q19")
        let question20 = Question(text: "Crocodiles have no sweat glands so they use their mouths to release heat.", answer: true, imageName: "q20")
        let question21 = Question(text: "Dogs are herbivores.", answer: false, imageName: "q21")
        let question22 = Question(text: "The two chambers at the bottom of your heart are called ventricles.", answer: true, imageName: "q22")
        let question23 = Question(text: "Cougar’s are herbivores.", answer: false, imageName: "q23")
        let question24 = Question(text: "The Grand Canyon is around 10000 feet (3000 meters) deep. ", answer: false, imageName: "q24")
        let question25 = Question(text: "Bats are mammals.", answer: true, imageName: "q25")
        let question26 = Question(text: "Frogs are cold blooded animals.", answer: true, imageName: "q26")
        let question27 = Question(text: "Chameleons can move their eyes in different directions at the same time.", answer: true, imageName: "q27")
        let question28 = Question(text: "There are 31 days in the month of July.", answer: true, imageName: "q28")
        let question29 = Question(text: "New York is the capital of America", answer: false, imageName: "q29")
        let question30 = Question(text: "The Summer Olympics are held every two year.", answer: false, imageName: "q30")
        
        
        
        return [question1,
                question2,
                question3,
                question4,
                question5,
                question6,
                question7,
                question8,
                question9,
                question10,
                question11,
                question12,
                question13,
                question14,
                question15,
                question16,
                question17,
                question18,
                question19,
                question20,
                question21,
                question22,
                question23,
                question24,
                question25,
                question26,
                question27,
                question28,
                question29,
                question30]
        
    }
}
