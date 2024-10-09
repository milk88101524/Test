//
//  NavSecondViewController.swift
//  test
//
//  Created by Han on 2024/10/5.
//

import UIKit

class NavSecondViewController: UIViewController {

    var receivedText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        view.backgroundColor = .white
        
        let btnSecond = UIButton()
        btnSecond.translatesAutoresizingMaskIntoConstraints = false
        btnSecond.setTitle(receivedText ?? "Back", for: .normal)
        btnSecond.setTitleColor(.black, for: .normal)
        btnSecond.backgroundColor = .opaqueSeparator
        btnSecond.addTarget(self, action: #selector(backPage), for: .touchUpInside)
        
        view.addSubview(btnSecond)
        
        NSLayoutConstraint.activate([
            btnSecond.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnSecond.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc private func backPage() {
        navigationController?.popViewController(animated: true)
    }
    
}

#Preview {
    UINavigationController(rootViewController: NavSecondViewController())
}
