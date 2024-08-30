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
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgrounfColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgrounfColor
        setTitle(title, for: .normal)
    }
    
    // MARK: - Functions
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
