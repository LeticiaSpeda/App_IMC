//
//  ViewController.swift
//  App_IMC
//
//  Created by Leticia Speda on 04/09/22.
//
//
import UIKit

final class CalculateIMCViewController: UIViewController {
    
    //MARK: Components
    
    var imc: Double = 0
    
    private lazy var titleApp: TitleAplication = .init(title: Constants.InformationAplication.titleApp.rawValue, description: Constants.InformationAplication.description.rawValue)
    
    private lazy var informationCalculate: UserInfoContainer = .init(frame: .zero)
    
    private lazy var buttonCalculateResults: ButtonCalculate = .init(title: Constants.titleBotao.calculate.rawValue)
    
    
    private lazy var infoBodyMassResult: BodyMassResult = .init(titleWeight: Constants.infomationResults.descriptionResult.rawValue, numberMass: "", titleImage: "")
    
    
    @objc func formulaForCalculation() {
        let heigth = informationCalculate.heightInfo.fillInInformationTextField.text?.replacingOccurrences(of: ",", with: ".")
        let weight = informationCalculate.weightInfo.fillInInformationTextField.text?.replacingOccurrences(of: ",", with: ".")
        
        if let informationHeight = Double(heigth ?? "0"),
           let informationWeight = Double (weight ?? "0") {
            imc = informationWeight / (informationHeight*informationHeight)
            showResults()
        }
        
        touchesBegan(Set(), with: nil)
    }
    
    private func showResults() {
        var result: String = ""
        var image: String
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = Image.peso.magro.rawValue
            
        case 16..<18.5:
            result = "Abaixo do peso"
            image = Image.peso.magro.rawValue
            
        case 18.5..<25:
            result = "Peso ideal"
            image = Image.peso.normal.rawValue
            
        case 25..<30:
            result = "Sobrepeso"
            image = Image.peso.sobrePeso.rawValue
            
        default:
            result = "Obesidade"
            image = Image.peso.obeso.rawValue
        }
        
        infoBodyMassResult.numberResultWeigth.text = "\(Int(imc)) \n \(result)"
        infoBodyMassResult.imageResultWeigth.image = UIImage(named: image)
        infoBodyMassResult.isHidden = false
        
    }
    
    //MARK: LifeCycle
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    //MARK: Helpers
    private func commonInit() {
        configureHerarchy()
        configureConstrainsts()
        configureStyle()
    }
    
    private func configureHerarchy() {
        view.addSubview(titleApp)
        view.addSubview(informationCalculate)
        view.addSubview(buttonCalculateResults)
        view.addSubview(infoBodyMassResult)
    }
    
    private func configureConstrainsts() {
        NSLayoutConstraint.activate([
            
            titleApp.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 36),
            
            titleApp.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 50)
            ,
            titleApp.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -50),
            
            informationCalculate.topAnchor.constraint(
                equalTo: titleApp.bottomAnchor,
                constant: 30),
            
            informationCalculate.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 60),
            
            informationCalculate.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -60),
            
            buttonCalculateResults.topAnchor.constraint(
                equalTo: titleApp.bottomAnchor,
                constant: 100),
            buttonCalculateResults.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
            
            infoBodyMassResult.topAnchor.constraint(
                equalTo: buttonCalculateResults.bottomAnchor,
                constant: 40),
            
            infoBodyMassResult.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            infoBodyMassResult.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            infoBodyMassResult.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    private func configureStyle() {
        view.backgroundColor = #colorLiteral(red: 0.008046486415, green: 0.7087008357, blue: 0.7625488639, alpha: 1)
        buttonCalculateResults.addTarget(self, action: #selector(formulaForCalculation), for: .touchUpInside)
        
    }
    
}


