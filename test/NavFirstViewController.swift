//
//  NavFirstViewController.swift
//  test
//
//  Created by Han on 2024/10/5.
//

import UIKit

class NavFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .white
        
        let btnFirst = UIButton()
        btnFirst.translatesAutoresizingMaskIntoConstraints = false
        btnFirst.setTitle("Next", for: .normal)
        btnFirst.setTitleColor(.black, for: .normal)
        btnFirst.backgroundColor = .opaqueSeparator
        btnFirst.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        
        view.addSubview(btnFirst)
        
        NSLayoutConstraint.activate([
            btnFirst.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnFirst.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc private func nextPage() {
        let navSecVC = NavSecondViewController()
        navSecVC.receivedText = "Hello, World!"
        navigationController?.pushViewController(navSecVC, animated: true)
    }
}

#Preview {
    UINavigationController(rootViewController: NavFirstViewController())
}
