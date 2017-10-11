//
//  NewsTableViewCell.swift
//  MyVK
//
//  Created by itisioslab on 11.10.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var newsTextLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var repostButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    let radiusRoundCorner: CGFloat = 50
    
    func prepare(with newsModel: News) {
        nameLabel.text = newsModel.text
        newsImageView.image = newsModel.image
        nameLabel.text = newsModel.name
        surnameLabel.text = newsModel.surname
        dataLabel.text = newsModel.date
        likeButton.setTitle(newsModel.numberOfLikes, for: .normal)
        commentButton.setTitle(newsModel.numberOfComments, for: .normal)
        repostButton.setTitle(newsModel.numberOfReposts, for: .normal)
        avatarImageView.roundCorners([.bottomLeft, .bottomRight, .topLeft, .topRight], radius: radiusRoundCorner)
    }
    
}
