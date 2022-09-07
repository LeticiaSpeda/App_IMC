//
//  TitleAplication.swift
//  App_IMC
//
//  Created by Leticia Speda on 05/09/22.
//

import UIKit

final class TitleAplication: UIStackView {
    
    let title: String
    let descriptionApp: String
    
    private lazy var titleCalculate: UILabel = {
        let label = UILabel()
        label.text = title
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        return label
    }()
    
    private lazy var descriptionCalculate: UILabel = {
        let label = UILabel()
        label.text = descriptionApp
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .light)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    init(title: String, description: String) {
        self.title = title
        self.descriptionApp = description
        super.init(frame: .zero)
        configureHierarchy()
        configureStyle()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureHierarchy() {
        addArrangedSubview(titleCalculate)
        addArrangedSubview(descriptionCalculate)
    }
    
    private func configureStyle() {
        axis = .vertical
        spacing = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
}


