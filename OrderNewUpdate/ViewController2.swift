//
//  ViewController2.swift
//  OrderNewUpdate
//
//  Created by Александр Белый on 26.10.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    let colorRedLight = UIColor(red: 255/255, green: 70/255, blue: 17/255, alpha: 0.1)
    let colorGrayLight = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
    let orangeRed = UIColor(red: 255/255, green: 69/255, blue: 0/255, alpha: 1)
    let greenDark = UIColor(red: 23/255, green: 150/255, blue: 0/255, alpha: 1)
    
    private lazy var viewScreen = UIView()
    private lazy var secretNew = UIView()
    private lazy var textPromo = UITextField()
    private lazy var apply = UIButton(type: .custom)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Применить промокод"
        
        viewTwoScreen ()
        secretPromocode ()
        
    }
    
    
    private func viewTwoScreen () {
        let viewScreen = UIView()
        viewScreen.backgroundColor = .white
        viewScreen.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewScreen)
    
        textPromo.placeholder = "Введите код"
        textPromo.layer.borderColor = UIColor.black.cgColor
        textPromo.layer.borderWidth = 1.0
        textPromo.backgroundColor = .white
        textPromo.textColor = .black
        textPromo.layer.cornerRadius = 12
        textPromo.translatesAutoresizingMaskIntoConstraints = false
        viewScreen.addSubview(textPromo)
        let apply = UIButton(type: .system)
        apply.setTitle("Применить", for: .normal)
        apply.setTitleColor(.white, for: .normal)
        apply.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        apply.backgroundColor = orangeRed
        apply.layer.cornerRadius = 12
        apply.translatesAutoresizingMaskIntoConstraints = false
        viewScreen.addSubview(apply)
        
        NSLayoutConstraint.activate([
            viewScreen.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            viewScreen.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewScreen.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewScreen.heightAnchor.constraint(equalToConstant: 164),
            
            textPromo.topAnchor.constraint(equalTo: viewScreen.topAnchor, constant: 16),
            textPromo.centerXAnchor.constraint(equalTo: viewScreen.centerXAnchor),
            textPromo.widthAnchor.constraint(equalToConstant: 343),
            textPromo.heightAnchor.constraint(equalToConstant: 54),
            
            apply.topAnchor.constraint(equalTo: textPromo.bottomAnchor, constant: 16),
            apply.centerXAnchor.constraint(equalTo: viewScreen.centerXAnchor),
            apply.widthAnchor.constraint(equalToConstant: 343),
            apply.heightAnchor.constraint(equalToConstant: 54)
            
            
            
        ])
        
        apply.addTarget(self, action: #selector(applyButtonTapped), for: .touchUpInside)
        
    }
    
    private func secretPromocode () {
        let secretNew = UIView()
        secretNew.backgroundColor = colorGrayLight
        secretNew.layer.cornerRadius = 12
        secretNew.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    @objc func applyButtonTapped() {
        guard let promoCodeText = textPromo.text, promoCodeText == "Secretnew" else {
            textPromo.layer.borderColor = UIColor.red.cgColor
            textPromo.textColor = .red
             return
         }
         
         // Возвращаемся на предыдущий экран
        navigationController?.popViewController(animated: true)

         print("Применили промокод и вернулись на первый экран")
        
    }
}
