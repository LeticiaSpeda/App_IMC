//
//  UserInfoContainer.swift
//  App_IMC
//
//  Created by Leticia Speda on 05/09/22.
//

import UIKit

final class UserInfoContainer: UIStackView {
    
    
    private(set) lazy var weightInfo: InformationToCalculate = .init(title: Constants.InformationAplication.weigth.rawValue, placeHolder: Constants.InformationAplication.weigthPlaceHolder.rawValue)
    
    private(set) lazy var heightInfo: InformationToCalculate = .init(title: Constants.InformationAplication.heigth.rawValue, placeHolder: Constants.InformationAplication.heigthPlaceHolder.rawValue)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureStyle()
        configureHierarchy()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureHierarchy() {
        addArrangedSubview(weightInfo)
        addArrangedSubview(heightInfo)
    }
    
    private func configureStyle() {
        axis = .horizontal
        spacing = 20
        translatesAutoresizingMaskIntoConstraints = false
        distribution = .equalCentering
    }
    
}
