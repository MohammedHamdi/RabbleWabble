//
//  QuestionGroupCell.swift
//  RabbleWabble
//
//  Created by Mohammed Hamdi on 3/4/20.
//  Copyright © 2020 Mohammed Hamdi. All rights reserved.
//

import UIKit
import Combine

public class QuestionGroupCell: UITableViewCell {
    @IBOutlet public var titleLabel: UILabel!
    @IBOutlet public var percentageLabel: UILabel!
    public var percentageSubscriber: AnyCancellable?
}
