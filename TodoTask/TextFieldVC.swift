//
//  TextFieldVC.swift
//  TodoTask
//
//  Created by Peyman on 12/29/24.
//

import UIKit

class TextFieldVC: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure () {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        layer.borderColor = UIColor.systemGray.cgColor
        layer.borderWidth = 1
      
        
        textColor = .label
        tintColor = .label
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        font = UIFont.preferredFont(forTextStyle: .title2)
        textAlignment = .center
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .done
        placeholder = "Enter your task"
    
    }
}
