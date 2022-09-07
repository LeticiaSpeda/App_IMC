//
//  ButtonCalculate.swift
//  App_IMC
//
//  Created by Leticia Speda on 05/09/22.
//

import UIKit

final class ButtonCalculate: UIButton {
    
    let title: String
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        configureConstraints()
        configureStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 280),
            heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
    private func configureStyle() {
        backgroundColor = #colorLiteral(red: 0, green: 0.6509149671, blue: 0.6568983793, alpha: 1)
        setTitle(title, for: .normal)
        setTitleColor(UIColor.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        layer.borderWidth = 2
        layer.borderColor = CGColor(red: 10, green: 10, blue: 10, alpha: 0.5)
        layer.cornerRadius = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
