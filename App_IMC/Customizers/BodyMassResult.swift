//
//  BodyMassResult.swift
//  App_IMC
//
//  Created by Leticia Speda on 06/09/22.
//

import UIKit

final class BodyMassResult: UIView {
    
    let titleWeight: String
    let titleImage: String
    let numberMass: String
    
    
    private lazy var mainHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        stack.alignment = .center
        return stack
    }()
    
    private lazy var resultWeight: UILabel = {
        let label = UILabel()
        label.text = titleWeight
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    private(set) lazy var numberResultWeigth: UILabel = {
        let label = UILabel()
        label.text = numberMass
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        return label
    }()
    
    private(set) lazy var imageResultWeigth: UIImageView = {
        let image = UIImage(named: titleImage)
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    init(titleWeight: String, numberMass: String, titleImage: String ) {
        self.titleWeight = titleWeight
        self.numberMass = numberMass
        self.titleImage = titleImage
        super.init(frame: .zero)
        configureHierarchy()
        configureConstraints()
        configureStyle()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureHierarchy() {
        addSubview(mainHStack)
        mainHStack.addArrangedSubview(resultWeight)
        mainHStack.addArrangedSubview(numberResultWeigth)
        mainHStack.addArrangedSubview(UIView())
        mainHStack.addArrangedSubview(imageResultWeigth)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            
            mainHStack.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            mainHStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainHStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainHStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100)
        ])
    }
    
    private func configureStyle() {
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        isHidden = true
    }
    
    
    
}
