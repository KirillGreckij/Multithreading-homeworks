//
//  PhotosTableViewCell.swift
//  Multithreading-homeworks
//
//  Created by Кирилл Грецкий on 10.03.2023.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Photos"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    var arrow: UIImageView = {
        let arrow = UIImageView()
        arrow.translatesAutoresizingMaskIntoConstraints = false
        arrow.image = UIImage(systemName: "arrow.right")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        return arrow
    }()
    
    var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    var firstImage: UIImageView = {
        let firstImage = UIImageView()
        firstImage.translatesAutoresizingMaskIntoConstraints = false
        firstImage.image = UIImage(named: "1")
        firstImage.layer.cornerRadius = 6
        firstImage.contentMode = .scaleAspectFill
        firstImage.clipsToBounds = true
        return firstImage
    }()
    
    var secondImage: UIImageView = {
        let secondImage = UIImageView()
        secondImage.translatesAutoresizingMaskIntoConstraints = false
        secondImage.image = UIImage(named: "2")
        secondImage.layer.cornerRadius = 6
        secondImage.contentMode = .scaleAspectFill
        secondImage.clipsToBounds = true
        return secondImage
    }()
    
    var thirdImage: UIImageView = {
        let thirdImage = UIImageView()
        thirdImage.translatesAutoresizingMaskIntoConstraints = false
        thirdImage.image = UIImage(named: "3")
        thirdImage.layer.cornerRadius = 6
        thirdImage.contentMode = .scaleAspectFill
        thirdImage.clipsToBounds = true
        return thirdImage
    }()
    
    var fourImage: UIImageView = {
        let fourImage = UIImageView()
        fourImage.translatesAutoresizingMaskIntoConstraints = false
        fourImage.image = UIImage(named: "4")
        fourImage.layer.cornerRadius = 6
        fourImage.contentMode = .scaleAspectFill
        fourImage.clipsToBounds = true
        return fourImage
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        contentView.addSubview(label)
        contentView.addSubview(arrow)
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(firstImage)
        stackView.addArrangedSubview(secondImage)
        stackView.addArrangedSubview(thirdImage)
        stackView.addArrangedSubview(fourImage)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            label.widthAnchor.constraint(equalToConstant: 100),
            label.heightAnchor.constraint(equalToConstant: 30),
            
            arrow.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            arrow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            arrow.heightAnchor.constraint(equalToConstant: 30),
            arrow.widthAnchor.constraint(equalToConstant: 30),
            
            stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            firstImage.widthAnchor.constraint(greaterThanOrEqualToConstant: (contentView.frame.width - 24) / 4),
            firstImage.heightAnchor.constraint(equalTo: firstImage.widthAnchor, multiplier: 0.56),
            
            secondImage.widthAnchor.constraint(greaterThanOrEqualToConstant: (contentView.frame.width - 24) / 4),
            secondImage.heightAnchor.constraint(equalTo: secondImage.widthAnchor, multiplier: 0.56),
            
            thirdImage.widthAnchor.constraint(greaterThanOrEqualToConstant: (contentView.frame.width - 24) / 4),
            thirdImage.heightAnchor.constraint(equalTo: thirdImage.widthAnchor, multiplier: 0.56),
            
            fourImage.widthAnchor.constraint(greaterThanOrEqualToConstant: (contentView.frame.width - 24) / 4),
            fourImage.heightAnchor.constraint(equalTo: fourImage.widthAnchor, multiplier: 0.56),
        ])
    }
}

