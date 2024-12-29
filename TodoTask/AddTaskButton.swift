//
//  AddTaskButton.swift
//  TodoTask
//
//  Created by Peyman on 12/27/24.
//

import UIKit

class AddTaskButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .bold)
        let plusImage = UIImage(systemName: "plus", withConfiguration: config)
        setImage(plusImage, for: .normal)
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
        layer.cornerRadius = 30
        clipsToBounds = true
       
    }
}
