//
//  CardSelectionVC.swift
//  Cards Workout
//
//  Created by Amr El-Fiqi on 30/08/2024.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    // MARK: - UI Elements
    
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgrounfColor: .systemRed, title: "Stop!")
    let restartButton = CWButton(backgrounfColor: .systemGreen, title: "Restart")
    let rulesButton = CWButton(backgrounfColor: .systemBlue, title: "Rules")

    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    // MARK: - Functions
    
    func configureUI() {
        configureCardImageView()
    }

    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureButtons() {
        
    }
    
    
}
