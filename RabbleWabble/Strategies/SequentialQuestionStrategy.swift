//
//  SequentialQuestionsStrategy.swift
//  RabbleWabble
//
//  Created by Mohammed Hamdi on 3/5/20.
//  Copyright © 2020 Mohammed Hamdi. All rights reserved.
//

import Foundation

public class SequentialQuestionStrategy: BaseQuestionStrategy {
   
    public convenience init(questionGroupCaretaker: QuestionGroupCaretaker) {
        let questionGroup = questionGroupCaretaker.selectedQuestionGroup!
        let questions = questionGroup.questions
        self.init(questionGroupCaretaker: questionGroupCaretaker, questions: questions)
    }
}
