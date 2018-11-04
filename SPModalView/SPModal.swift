//
//  SPModal.swift
//  SPModalView
//
//  Created by Samarth Paboowal on 04/11/18.
//  Copyright © 2018 Samarth Paboowal. All rights reserved.
//

import UIKit

public class SPModal: UIView {
    
    
    //MARK: - Properties
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        return view
    }()
    
    private let headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    
    //MARK: - Init Methods

    public override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupViews()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        setupViews()
    }
    
    
    //MARK: - Public Setter Methods
    
    public func set(image: UIImage) {
        self.imageView.image = image
    }
    
    public func set(heading text: String) {
        self.headingLabel.text = text
    }
    
    public func set(heading textColor: UIColor) {
        self.headingLabel.textColor = textColor
    }
    
    public func set(heading font: UIFont) {
        self.headingLabel.font = font
    }
    
    
    //MARK: - View Adding Methods
    
    private func setupViews() {
        
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, constant: -40).isActive = true
        imageView.heightAnchor.constraint(equalTo: widthAnchor).isActive = true
        
        addSubview(headingLabel)
        headingLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        headingLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        headingLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        headingLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }
    
}
