//
//  ViewController.swift
//  PassingData-Delegates2
//
//  Created by Ruslan on 18.02.2022.
//

import UIKit

// anyObject is required
protocol MyDelegate: AnyObject {
    func showAlertController()
}

class ViewController: UIViewController {
    
    // creating an instance of class who will delegate a work
    let myView = MyView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting up delegate
        myView.delegate = self
        
        myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        myView.center = view.center
        myView.backgroundColor = .lightGray
        view.addSubview(myView)
    }
}

// conforming to delegate protocol
extension ViewController: MyDelegate {
    func showAlertController() {
        let alertController = UIAlertController(title: "Good job!", message: "You did it!", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okButton)
        present(alertController, animated: true, completion: nil)
    }
}

