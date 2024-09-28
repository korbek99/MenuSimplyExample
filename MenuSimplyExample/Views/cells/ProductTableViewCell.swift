//
//  ProductTableViewCell.swift
//  MenuSimplyExample
//
//  Created by Jose David Bustos H on 28-09-17.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    let myImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(myImage)
        contentView.addSubview(myLabel)

        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupConstraints() {
      
        NSLayoutConstraint.activate([
            myImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            myImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            myImage.widthAnchor.constraint(equalToConstant: 180),
            myImage.heightAnchor.constraint(equalToConstant: 180)
        ])


        NSLayoutConstraint.activate([
            myLabel.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 16),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            myLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

