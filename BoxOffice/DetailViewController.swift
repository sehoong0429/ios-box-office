//
//  DetailViewController.swift
//  BoxOffice
//
//  Created by Seoyeon Hong on 2023/03/27.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addContent()
    }
    
    private func addContent() {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "This is an empty GroupTasksViewController"
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}
