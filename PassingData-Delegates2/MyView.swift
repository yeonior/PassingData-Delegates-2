//
//  MyView.swift
//  PassingData-Delegates2
//
//  Created by Ruslan on 18.02.2022.
//

import UIKit

class MyView: UIView {
    
    // delegate must be weak
    weak var delegate: MyDelegate?
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textAlignment = .center
        label.backgroundColor = .systemMint
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.setTitle("Press me", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        addSubview(button)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(x: 20, y: 20, width: 260, height: 120)
        button.frame = CGRect(x: 20, y: 160, width: 260, height: 120)
    }
    
    @objc
    private func showAlert() {
        
        // delegation
        // showing alert
        delegate?.showAlertController()
    }
}
