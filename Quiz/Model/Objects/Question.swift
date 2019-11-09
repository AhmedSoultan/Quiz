//
//  Question.swift
//  Quiz Lecture
//
//  Created by Fadly on 6/21/19.
//  Copyright © 2019 Fadly. All rights reserved.
//

import Foundation

class Question {
    
    let text:String
    let answer:Bool
    let imageName:String?
    
    init(text:String, answer:Bool, imageName:String?) {
        self.text = text
        self.answer = answer
        self.imageName = imageName
    }
    
}
