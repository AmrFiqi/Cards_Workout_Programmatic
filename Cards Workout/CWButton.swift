//
//  CWButton.swift
//  Cards Workout
//
//  Created by Amr El-Fiqi on 30/08/2024.
//

import UIKit

class CWButton: UIButton {

    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, imageName: String) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.title = title
        configuration?.image = UIImage(systemName: imageName)
        configuration?.imagePadding = 5
        translatesAutoresizingMaskIntoConstraints = false
        
//        self.backgroundColor = backgrounfColor
//        setTitle(title, for: .normal)
//        configure()
    }
    
    // MARK: - Functions
//    
//    func configure() {
//        layer.cornerRadius = 8
//        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
//        setTitleColor(.white, for: .normal)
//        translatesAutoresizingMaskIntoConstraints = false
//        
//    }

}
