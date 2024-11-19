//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by Vivek  Garg on 19/11/24.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    
    private let downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        // this is for that we are setting constraints from here not from storyboard.
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        // this is for that we are setting constraints from here not from storyboard.
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    //Step 2
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()

    // Step 1 We will first provide frame when initialzing this view.
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Step 3 adding heroImageView to its subview
        addSubview(heroImageView)
        // Step 5 we will put fading effect on this view.
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let playButtonConstraint = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let downloadButtonConstraint = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(playButtonConstraint)
        NSLayoutConstraint.activate(downloadButtonConstraint)
        
    }
     
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            // on top for 0 it will clear the top view to make it visible clearly.
            UIColor.clear.cgColor,
            // this will work on bottom taking systembackground color.
            UIColor.systemBackground.cgColor
        ]
        // giving it frame otherwise it will not locate on Uiview propertly or any.
        gradientLayer.frame = bounds
        // setting it on self.layer to appears it on top.
        self.layer.addSublayer(gradientLayer)
    }
    
    // Step 4 for giving it frame
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = self.bounds
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }

}
