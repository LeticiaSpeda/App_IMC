//
//  informationToCalculate.swift
//  App_IMC
//
//  Created by Leticia Speda on 05/09/22.
//

import UIKit

final class InformationToCalculate: UIStackView {
    
    let title: String
    let placeHolder: String
    
    private lazy var informationForCalculation: UILabel = {
        let label = UILabel()
        label.text = title
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    private(set) lazy var fillInInformationTextField: UITextField = {
        let text = UITextField()
        text.placeholder = placeHolder
        text.attributedPlaceholder = .init(
            string: placeHolder,
            attributes: [.foregroundColor: UIColor.black.withAlphaComponent(0.3)]
        )
        text.keyboardType = .decimalPad
        text.textColor = .black
        text.textAlignment = .center
        text.backgroundColor = .white
        text.layer.cornerRadius = 5
        return text
    }()
    
    
    init(title: String, placeHolder: String) {
        self.title = title
        self.placeHolder = placeHolder
        super.init(frame: .zero)
        commonInit()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        configureHierarchy()
        configureStyle()
    }
    
    private func configureHierarchy() {
        addArrangedSubview(informationForCalculation)
        addArrangedSubview(fillInInformationTextField)
    }
    
    private func configureStyle() {
        axis = .vertical
        spacing = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

