//
//  FirstViewController.swift
//  test
//
//  Created by Han on 2024/10/5.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func setupView() {
        view.backgroundColor = .white
        
        let firstLabel = UILabel()
        firstLabel.text = "First"
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

#Preview {
    UINavigationController(rootViewController: FirstViewController())
}
