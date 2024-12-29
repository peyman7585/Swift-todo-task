//
//  AddTaskVC.swift
//  TodoTask
//
//  Created by Peyman on 12/29/24.
//

import UIKit

class AddTaskVC: UIViewController {

    let label = UILabel()
    let textField = TextFieldVC()
    let saveButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 225/255.0, green: 229/255.0, blue: 240/255.0, alpha: 1.0)

        todoLabel()
        addTextField()
        saveTaskButton()
    }
    

    func todoLabel (){
        
        view.addSubview(label)
        label.text = "Add a new task"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    func addTextField (){
        view.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            textField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func saveTaskButton (){
        
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle( "Save", for: .normal)
        saveButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        saveButton.setTitleColor(UIColor { traitCollection in
                  return traitCollection.userInterfaceStyle == .dark ? .white : .black
              }, for: .normal)
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
           
            saveButton.trailingAnchor.constraint(equalTo: textField.trailingAnchor)
        ])
    }
    
    

}
