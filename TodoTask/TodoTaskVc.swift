//
//  TodoTaskVc.swift
//  TodoTask
//
//  Created by Peyman on 12/21/24.
//

import UIKit

class TodoTaskVc: UIViewController{
   
    let label = UILabel()
    let mainImage = UIImageView()
    let addTaskButton = AddTaskButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        showImage()
        ButtonTask()
        todoLabel()
    }
    
    
    func todoLabel (){
        
        view.addSubview(label)
        label.text = "Todo Task"
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.backgroundColor = UIColor(red: 225/255.0, green: 229/255.0, blue: 240/255.0, alpha: 1.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 60),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    func showImage (){
        
        view.addSubview(mainImage)
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        mainImage.image = UIImage(named: "image")
        mainImage.contentMode = .scaleAspectFit
        mainImage.clipsToBounds = true
        NSLayoutConstraint.activate([
            mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            mainImage.widthAnchor.constraint(equalToConstant: 200),
            mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           ])
    }
    
    func ButtonTask (){
        
        view.addSubview(addTaskButton)
        addTaskButton.addTarget(self, action: #selector(showAddTaskVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            
            addTaskButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 330),
            addTaskButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            addTaskButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            addTaskButton.widthAnchor.constraint(equalToConstant: 60), // Width
            addTaskButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    @objc func showAddTaskVC() {
       let addTaskVC = AddTaskVC()
        if let sheet = addTaskVC.sheetPresentationController {
               sheet.detents =  [.custom(resolver: { _ in 250 })]
               sheet.prefersGrabberVisible = true  
           }
        present(addTaskVC, animated: true)
    }

}


