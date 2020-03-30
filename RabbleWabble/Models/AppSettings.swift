//
//  AppSettings.swift
//  RabbleWabble
//
//  Created by Mohammed Hamdi on 3/5/20.
//  Copyright © 2020 Mohammed Hamdi. All rights reserved.
//

import Foundation

public class AppSettings {
    // MARK:- Keys
    private struct keys {
        static let questionStrategy = "questionStrategy"
    }
    
    // MARK:- Static Properties
    public static let shared = AppSettings()
    
    // MARK:- Instance Properties
    public var questionStrategyType: QuestionStrategyType {
        get {
            let rawValue = userDefaults.integer(forKey: keys.questionStrategy)
            return QuestionStrategyType(rawValue: rawValue)!
        } set {
            userDefaults.set(newValue.rawValue, forKey: keys.questionStrategy)
        }
    }
    private let userDefaults = UserDefaults.standard
    
    // MARK:- Object Lifecycle
    private init() { }
    
    // MARK:- Instance Methods
    public func questionStrategy(for questionGroupCaretaker: QuestionGroupCaretaker) -> QuestionStrategy {
        return questionStrategyType.questionStrategy(for: questionGroupCaretaker)
    }
}

public enum QuestionStrategyType: Int, CaseIterable {
    case random
    case sequential
    
    // MARK:- Instance Methods
    public func title() -> String {
        switch self {
        case .random:
            return "Random"
        case .sequential:
            return "Sequential"
        }
    }
    
    public func questionStrategy(for questionGroupCaretaker: QuestionGroupCaretaker) -> QuestionStrategy {
        switch self {
        case .random:
            return RandomQuestionStrategy(questionGroupCaretaker: questionGroupCaretaker)
        case .sequential:
            return SequentialQuestionStrategy(questionGroupCaretaker: questionGroupCaretaker)
        }
    }
}
