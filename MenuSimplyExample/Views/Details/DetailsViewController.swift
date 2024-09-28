//
//  DetailsViewController.swift
//  MenuSimplyExample
//
//  Created by Jose David Bustos H on 28-09-17.
//

import UIKit

class DetailsViewController: UIViewController {

    var strImage: String = ""
    var strLabel: String = ""
    
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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details Product"
        setupUX()
    }
    
    func setupUX() {
        view.backgroundColor = .white
        view.addSubview(myImage)
        view.addSubview(myLabel)
        
        NSLayoutConstraint.activate([
            myImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            myImage.widthAnchor.constraint(equalToConstant: 200),
            myImage.heightAnchor.constraint(equalToConstant: 200),

            myLabel.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 20),
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        myImage.image = UIImage(named: strImage)
        myLabel.text = strLabel
    }
}
