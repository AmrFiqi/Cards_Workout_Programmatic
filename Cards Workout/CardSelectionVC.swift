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
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
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
    
    func configureStopButton() {
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30),
            
        ])
    }
    
    func configureRestartButton() {
        view.addSubview(restartButton)
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor)
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
            
            
        ])
    }
    
}
