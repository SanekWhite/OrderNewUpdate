//
//  ViewController.swift
//  OrderNewUpdate
//
//  Created by Александр Белый on 22.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let colorRedLight = UIColor(red: 255/255, green: 70/255, blue: 17/255, alpha: 0.1)
    let colorGrayLight = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
    let orangeRed = UIColor(red: 255/255, green: 69/255, blue: 0/255, alpha: 1)
    let greenDark = UIColor(red: 23/255, green: 150/255, blue: 0/255, alpha: 1)
    
    var viewModel = ViewModel()
    
    private let scrollView = UIScrollView()
    private let containerView = UIView()
    private lazy var topBarOrder = UIView()
    private lazy var titleSmollBar = UILabel()
    private lazy var mobileDivider = UIView()
    private lazy var titleDesk = UIView()
    private lazy var titleDeskText = UILabel()
    private lazy var oneProductOnePromo = UILabel()
    private lazy var buttonPromocode = UIButton(type: .system)
    private lazy var promoCode1 = UIView()
    private lazy var ellipse = UIView()
    private lazy var ellipse6 = UIView()
    private lazy var promoCode2 = UIView()
    private lazy var ellipse2 = UIView()
    private lazy var ellipse7 = UIView()
    private lazy var promoCode3 = UIView()
    private lazy var ellipse3 = UIView()
    private lazy var ellipse8 = UIView()
    private lazy var promoCode4 = UIView()
    private lazy var ellipse4 = UIView()
    private lazy var ellipse9 = UIView()
    private lazy var promoCode5 = UIView()
    private lazy var ellipse5 = UIView()
    private lazy var ellipse10 = UIView()
    private lazy var textLabel1 = UILabel()
    private lazy var imagePercent = UIImageView()
    private lazy var imageInfo = UIImageView()
    private lazy var textLabel2 = UILabel()
    private lazy var imagePercent2 = UIImageView()
    private lazy var imageInfo2 = UIImageView()
    private lazy var textLabel3 = UILabel()
    private lazy var imagePercent3 = UIImageView()
    private lazy var imageInfo3 = UIImageView()
    private lazy var textLabel4 = UILabel()
    private lazy var imagePercent4 = UIImageView()
    private lazy var imageInfo4 = UIImageView()
    private lazy var textLabel5 = UILabel()
    private lazy var imagePercent5 = UIImageView()
    private lazy var imageInfo5 = UIImageView()
    private lazy var closePromocode = UIButton(type: .system)
    private lazy var summTable = UIView()
    private lazy var priceForTwoItems = UILabel()
    private lazy var discountsText = UILabel()
    private lazy var promocodeText = UILabel()
    private lazy var paymentMethodText = UILabel()
    private lazy var totalText = UILabel()
    private lazy var willPlaceAnOrderButton = UIButton(type: .system)
    private lazy var termsOfOffer = UILabel()
    private lazy var priceForTwoItemsTotalText = UILabel()
    private lazy var discountsTotalText = UILabel()
    private lazy var total = UILabel()
    private lazy var promocodes1Switch = UISwitch()
    private lazy var promocodes2Switch2 = UISwitch()
    private lazy var promocodes3Switch3 = UISwitch()
    private lazy var promocodes4Switch4 = UISwitch()
    private lazy var promocodes5Switch5 = UISwitch()
    private lazy var promoCodeTotalText = UILabel()
    private lazy var error = UIButton(type: .custom)
    private lazy var error2 = UIButton(type: .custom)
    private lazy var error3 = UIButton(type: .custom)
    private lazy var time = UILabel()
    private lazy var time2 = UILabel()
    private lazy var time3 = UILabel()
    private lazy var time4 = UILabel()
    private lazy var time5 = UILabel()
  //  private lazy var stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupScrollView()
        
        setupContainerView()
        
        topBarOrder = createTopBarOrder(in: containerView)
        
        mobileDivider = createMobileDivider(in: containerView, below: topBarOrder)
        
        titleDesk = createTitleDesk(in: containerView, below: mobileDivider)
        
        buttonPromocode = createButtonPromocode(in: containerView, below: titleDesk)
        
        promoCode1 = createPromoCode(in: containerView, below: buttonPromocode)
        
        promoCode2 = createPromoCode2(in: containerView, below: promoCode1)
        
        promoCode3 = createPromoCode3(in: containerView, below: promoCode2)
        
        promoCode4 = createPromoCode4(in: containerView, below: promoCode3)
        
        promoCode5 = createPromoCode5(in: containerView, below: promoCode4)
        
        textLabel1 = createTextLabel1(in: containerView, below: promoCode1)
        
        textLabel2 = createTextLabel2(in: containerView, below: promoCode2)
        
        textLabel3 = createTextLabel3(in: containerView, below: promoCode3)
        
        textLabel4 = createTextLabel4(in: containerView, below: promoCode4)
        
        textLabel5 = createTextLabel5(in: containerView, below: promoCode5)
        
        closePromocode = createCloseButtonPromocode(in: containerView, below: promoCode5)
        
        summTable = createSummTable(in: containerView, below: closePromocode)
        
        promocodes1Switch = createSwithes(in: containerView, below: promoCode1, below: promoCode2, below: promoCode3, below: promoCode4, below: promoCode5)
        
        setUptextPromocode()
        
        showOrder(in: containerView)
        
        itmesText()
        
   //     createStackView()
        
    //    setupPromoCodes()
        
    }
    private func createStackView() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: containerView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: containerView.rightAnchor)
            
            
            
        ])
        
    }
    
    private func setupScrollView() {
        scrollView.isScrollEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    
    private func setupContainerView() {
        containerView.backgroundColor = .clear
        containerView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func createTopBarOrder(in containerView: UIView) -> UIView {
        let topBarOrder = UIView()
        topBarOrder.backgroundColor = .white
        topBarOrder.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(topBarOrder)
        
        let titleSmollBar = UILabel()
        titleSmollBar.text = ""
        titleSmollBar.textColor = .black
        titleSmollBar.font = .systemFont(ofSize: 16)
        titleSmollBar.translatesAutoresizingMaskIntoConstraints = false
        titleSmollBar.numberOfLines = 0
        titleSmollBar.lineBreakMode = .byWordWrapping
        topBarOrder.addSubview(titleSmollBar)
        self.titleSmollBar = titleSmollBar
        
        NSLayoutConstraint.activate ([
            topBarOrder.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor),
            topBarOrder.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            topBarOrder.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            topBarOrder.heightAnchor.constraint(equalToConstant: 42),
            
            titleSmollBar.centerXAnchor.constraint(equalTo: topBarOrder.centerXAnchor),
            titleSmollBar.centerYAnchor.constraint(equalTo: topBarOrder.centerYAnchor)
            
        ])
        
        return topBarOrder
    }
    
    private func createMobileDivider(in containerView: UIView, below topBarOrder: UIView) -> UIView {
        let mobileDivider = UIView()
        mobileDivider.layer.shadowColor = UIColor.gray.cgColor
        mobileDivider.layer.shadowOpacity = 0.1
        mobileDivider.layer.shadowOffset = CGSize(width: 0, height: 2)
        mobileDivider.layer.shadowRadius = 3
        mobileDivider.backgroundColor = colorGrayLight
        mobileDivider.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(mobileDivider)
        
        NSLayoutConstraint.activate([
            mobileDivider.topAnchor.constraint(equalTo: topBarOrder.bottomAnchor),
            mobileDivider.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            mobileDivider.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            mobileDivider.heightAnchor.constraint(equalToConstant: 16)
        ])
        return mobileDivider
    }
    
    private func createTitleDesk(in containerView: UIView, below mobileDivider: UIView) -> UIView {
        let titleDesk = UIView()
        titleDesk.backgroundColor = .clear
        titleDesk.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(titleDesk)
        
        let titleDeskText = UILabel()
        titleDeskText.text = "Промокоды"
        titleDeskText.textColor = .black
        titleDeskText.font = .systemFont(ofSize: 24)
        titleDeskText.translatesAutoresizingMaskIntoConstraints = false
        titleDeskText.numberOfLines = 0
        titleDeskText.lineBreakMode = .byWordWrapping
        titleDesk.addSubview(titleDeskText)
        
        let oneProductOnePromo = UILabel()
        oneProductOnePromo.text = "На один товар можно применить только один промокод"
        oneProductOnePromo.textColor = .gray
        oneProductOnePromo.font = .systemFont(ofSize: 14)
        oneProductOnePromo.translatesAutoresizingMaskIntoConstraints = false
        oneProductOnePromo.numberOfLines = 0
        oneProductOnePromo.lineBreakMode = .byWordWrapping
        titleDesk.addSubview(oneProductOnePromo)
        
        NSLayoutConstraint.activate([
            titleDesk.topAnchor.constraint(equalTo: mobileDivider.bottomAnchor, constant: 24),
            titleDesk.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            titleDesk.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            titleDesk.heightAnchor.constraint(equalToConstant: 82),
            
            titleDeskText.topAnchor.constraint(equalTo: titleDesk.topAnchor, constant: 1),
            titleDeskText.leftAnchor.constraint(equalTo: titleDesk.leftAnchor, constant: 1),
            titleDeskText.rightAnchor.constraint(equalTo: titleDesk.rightAnchor, constant: -8),
            
            oneProductOnePromo.topAnchor.constraint(equalTo: titleDesk.topAnchor, constant: 42),
            oneProductOnePromo.leftAnchor.constraint(equalTo: titleDesk.leftAnchor, constant: 1),
            oneProductOnePromo.rightAnchor.constraint(equalTo: titleDesk.rightAnchor, constant: -1)
        ])
        
        return titleDesk
    }
    
    private func createButtonPromocode(in containerView: UIView, below titleDesk: UIView) -> UIButton {
        let buttonPromocode = UIButton(type: .system)
        buttonPromocode.setTitle(" Применить промокод", for: .normal)
        buttonPromocode.setTitleColor(orangeRed, for: .normal)
        buttonPromocode.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        buttonPromocode.backgroundColor = colorRedLight
        buttonPromocode.layer.cornerRadius = 12
        buttonPromocode.translatesAutoresizingMaskIntoConstraints = false
        buttonPromocode.tintColor = .red
        buttonPromocode.contentHorizontalAlignment = .center
        containerView.addSubview(buttonPromocode)
        
        let imageView = UIView()
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        buttonPromocode.addSubview(imageView)
        
        let image = UIImageView()
        image.image = .shape
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        imageView.addSubview(image)
        
        NSLayoutConstraint.activate([
            buttonPromocode.topAnchor.constraint(equalTo: titleDesk.bottomAnchor, constant: 16),
            buttonPromocode.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            buttonPromocode.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            buttonPromocode.heightAnchor.constraint(equalToConstant: 54),
            
            imageView.topAnchor.constraint(equalTo: buttonPromocode.topAnchor, constant: 19),
            imageView.leftAnchor.constraint(equalTo: buttonPromocode.leftAnchor, constant: 75),
            
            
            
        ])
        
        buttonPromocode.addTarget(self, action: #selector(promocodeButtonTapped), for: .touchUpInside)
        
        return buttonPromocode
    }
    
//    private func setupPromoCodes() {
//        let promoCodes = [createPromoCode(in: containerView, below: buttonPromocode), //createPromoCode2(in: containerView, below: promoCode1), createPromoCode3(in: //containerView, below: promoCode2), createPromoCode4(in: containerView, below: //promoCode3), createPromoCode5(in: containerView, below: promoCode4), createSwithes(in: //containerView, below: promoCode1, below: promoCode2, below: promoCode3, below: //promoCode4, below: promoCode5), createSummTable(in: containerView, below: //closePromocode), createCloseButtonPromocode(in: containerView, below: promoCode4)]
//        promoCodes.forEach { stackView.addArrangedSubview($0) }
//    }
    
    private func createPromoCode(in containerView: UIView, below buttonPromocode: UIButton) -> UIView {
        let promoCode1 = UIView()
        promoCode1.backgroundColor = colorGrayLight
        promoCode1.layer.cornerRadius = 12
        promoCode1.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode1)
        let ellipse = UIView()
        ellipse.backgroundColor = .white
        ellipse.layer.cornerRadius = 10
        ellipse.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(ellipse)
        let ellipse6 = UIView()
        ellipse6.backgroundColor = .white
        ellipse6.layer.cornerRadius = 10
        ellipse6.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(ellipse6)
        
        NSLayoutConstraint.activate([
            promoCode1.topAnchor.constraint(equalTo: buttonPromocode.bottomAnchor, constant: 16),
            promoCode1.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode1.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode1.heightAnchor.constraint(equalToConstant: 90),
            
            ellipse.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 37),
            ellipse.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: -8),
            ellipse.widthAnchor.constraint(equalToConstant: 16),
            ellipse.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse6.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 37),
            ellipse6.rightAnchor.constraint(equalTo: promoCode1.rightAnchor, constant: 8),
            ellipse6.widthAnchor.constraint(equalToConstant: 16),
            ellipse6.heightAnchor.constraint(equalToConstant: 16),
            
        ])
        
        return promoCode1
    }
    
    private func createPromoCode2(in containerView: UIView, below promoCode1: UIView) -> UIView {
        let promoCode2 = UIView()
        promoCode2.backgroundColor = colorGrayLight
        promoCode2.layer.cornerRadius = 12
        promoCode2.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode2)
        let ellipse2 = UIView()
        ellipse2.backgroundColor = .white
        ellipse2.layer.cornerRadius = 10
        ellipse2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(ellipse2)
        let ellipse7 = UIView()
        ellipse7.backgroundColor = .white
        ellipse7.layer.cornerRadius = 10
        ellipse7.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(ellipse7)
        
        NSLayoutConstraint.activate([
            promoCode2.topAnchor.constraint(equalTo: promoCode1.bottomAnchor, constant: 8),
            promoCode2.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode2.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode2.heightAnchor.constraint(equalToConstant: 90),
            
            ellipse2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 37),
            ellipse2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: -8),
            ellipse2.widthAnchor.constraint(equalToConstant: 16),
            ellipse2.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse7.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 37),
            ellipse7.rightAnchor.constraint(equalTo: promoCode2.rightAnchor, constant: 8),
            ellipse7.widthAnchor.constraint(equalToConstant: 16),
            ellipse7.heightAnchor.constraint(equalToConstant: 16),
        ])
        
        return promoCode2
    }
    
    private  func createPromoCode3(in containerView: UIView, below promoCode2: UIView) -> UIView {
        let promoCode3 = UIView()
        promoCode3.backgroundColor = colorGrayLight
        promoCode3.layer.cornerRadius = 12
        promoCode3.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode3)
        let ellipse3 = UIView()
        ellipse3.backgroundColor = .white
        ellipse3.layer.cornerRadius = 10
        ellipse3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(ellipse3)
        let ellipse8 = UIView()
        ellipse8.backgroundColor = .white
        ellipse8.layer.cornerRadius = 10
        ellipse8.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(ellipse8)
        
        NSLayoutConstraint.activate([
            promoCode3.topAnchor.constraint(equalTo: promoCode2.bottomAnchor, constant: 8),
            promoCode3.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode3.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode3.heightAnchor.constraint(equalToConstant: 66),
            
            ellipse3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 25),
            ellipse3.leftAnchor.constraint(equalTo: promoCode3.leftAnchor, constant: -8),
            ellipse3.widthAnchor.constraint(equalToConstant: 16),
            ellipse3.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse8.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 25),
            ellipse8.rightAnchor.constraint(equalTo: promoCode3.rightAnchor, constant: 8),
            ellipse8.widthAnchor.constraint(equalToConstant: 16),
            ellipse8.heightAnchor.constraint(equalToConstant: 16),
        ])
        
        return promoCode3
    }
    
    private func createPromoCode4(in containerView: UIView, below promoCode3: UIView) -> UIView {
        let promoCode4 = UIView()
        promoCode4.backgroundColor = colorGrayLight
        promoCode4.layer.cornerRadius = 12
        promoCode4.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode4)
        let ellipse4 = UIView()
        ellipse4.backgroundColor = .white
        ellipse4.layer.cornerRadius = 10
        ellipse4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(ellipse4)
        let ellipse9 = UIView()
        ellipse9.backgroundColor = .white
        ellipse9.layer.cornerRadius = 10
        ellipse9.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(ellipse9)
        
        NSLayoutConstraint.activate([
            promoCode4.topAnchor.constraint(equalTo: promoCode3.bottomAnchor, constant: 8),
            promoCode4.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode4.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode4.heightAnchor.constraint(equalToConstant: 66),
            
            ellipse4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 25),
            ellipse4.leftAnchor.constraint(equalTo: promoCode4.leftAnchor, constant: -8),
            ellipse4.widthAnchor.constraint(equalToConstant: 16),
            ellipse4.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse9.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 25),
            ellipse9.rightAnchor.constraint(equalTo: promoCode4.rightAnchor, constant: 8),
            ellipse9.widthAnchor.constraint(equalToConstant: 16),
            ellipse9.heightAnchor.constraint(equalToConstant: 16),
            
        ])
        
        return promoCode4
        
    }
    
    private func createPromoCode5(in containerView: UIView, below promoCode4: UIView) -> UIView {
        let promoCode5 = UIView()
        promoCode5.backgroundColor = colorGrayLight
        promoCode5.layer.cornerRadius = 12
        promoCode5.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(promoCode5)
        let ellipse5 = UIView()
        ellipse5.backgroundColor = .white
        ellipse5.layer.cornerRadius = 10
        ellipse5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(ellipse5)
        let ellipse10 = UIView()
        ellipse10.backgroundColor = .white
        ellipse10.layer.cornerRadius = 10
        ellipse10.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(ellipse10)
        
        NSLayoutConstraint.activate([
            promoCode5.topAnchor.constraint(equalTo: promoCode4.bottomAnchor, constant: 8),
            promoCode5.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            promoCode5.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            promoCode5.heightAnchor.constraint(equalToConstant: 66),
            
            ellipse5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 25),
            ellipse5.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: -8),
            ellipse5.widthAnchor.constraint(equalToConstant: 16),
            ellipse5.heightAnchor.constraint(equalToConstant: 16),
            
            ellipse10.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 25),
            ellipse10.rightAnchor.constraint(equalTo: promoCode5.rightAnchor, constant: 8),
            ellipse10.widthAnchor.constraint(equalToConstant: 16),
            ellipse10.heightAnchor.constraint(equalToConstant: 16),
            
        ])
        
        return promoCode5
        
    }
    
    private func createTextLabel1(in containerView: UIView, below promoCode1: UIView) -> UILabel {
        let textLabel1 = UILabel()
        textLabel1.textColor = .black
        textLabel1.font = UIFont.systemFont(ofSize: 16)
        textLabel1.numberOfLines = 0
        textLabel1.lineBreakMode = .byWordWrapping
        textLabel1.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(textLabel1)
        let imagePercent = UIImageView()
        imagePercent.image = .percent
        imagePercent.contentMode = .scaleAspectFill
        imagePercent.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(imagePercent)
        let imageInfo = UIImageView()
        imageInfo.image = .info
        imageInfo.contentMode = .scaleAspectFill
        imageInfo.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(imageInfo)
        let time = UILabel()
        time.text = formattedEndDate(for: viewModel.order.promocodes[0]) ?? ""
        time.textColor = .gray
        time.font = UIFont.systemFont(ofSize: 14)
        time.numberOfLines = 0
        time.lineBreakMode = .byWordWrapping
        time.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(time)
        let actionPromoOneOrder = UILabel()
        actionPromoOneOrder.text = "Промокод действует на первый заказ в приложении"
        actionPromoOneOrder.textColor = .gray
        actionPromoOneOrder.font = UIFont.systemFont(ofSize: 12)
        actionPromoOneOrder.numberOfLines = 0
        actionPromoOneOrder.lineBreakMode = .byWordWrapping
        actionPromoOneOrder.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(actionPromoOneOrder)
        
        NSLayoutConstraint.activate([
            textLabel1.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 16),
            textLabel1.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: 16),
            
            imagePercent.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 16),
            imagePercent.leftAnchor.constraint(equalTo: textLabel1.rightAnchor, constant: 4),
            
            
            imageInfo.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 17),
            imageInfo.leftAnchor.constraint(equalTo: imagePercent.rightAnchor, constant: 1),
            
            time.topAnchor.constraint(equalTo: textLabel1.bottomAnchor, constant: 2),
            time.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: 16),
            
            actionPromoOneOrder.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 8),
            actionPromoOneOrder.leftAnchor.constraint(equalTo: promoCode1.leftAnchor, constant: 16),
            actionPromoOneOrder.rightAnchor.constraint(equalTo: promoCode1.rightAnchor, constant: -8),
            actionPromoOneOrder.bottomAnchor.constraint(equalTo: promoCode1.bottomAnchor, constant: -12)
            
            
        ])
        
        return textLabel1
    }
    
    private func createTextLabel2(in containerView: UIView, below promoCode2: UIView) -> UILabel {
        let textLabel2 = UILabel()
        textLabel2.textColor = .black
        textLabel2.font = UIFont.systemFont(ofSize: 16)
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(textLabel2)
        let imagePercent2 = UIImageView()
        imagePercent2.image = .percent
        imagePercent2.contentMode = .scaleAspectFill
        imagePercent2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(imagePercent2)
        let imageInfo2 = UIImageView()
        imageInfo2.image = .info
        imageInfo2.contentMode = .scaleAspectFill
        imageInfo2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(imageInfo2)
        let time2 = UILabel()
        time2.text = formattedEndDate(for: viewModel.order.promocodes[1]) ?? ""
        time2.textColor = .gray
        time2.font = UIFont.systemFont(ofSize: 14)
        time2.numberOfLines = 0
        time2.lineBreakMode = .byWordWrapping
        time2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(time2)
        let actionPromoOneOrder2 = UILabel()
        actionPromoOneOrder2.text = "Промокод действует для заказов от 30 000 ₽"
        actionPromoOneOrder2.textColor = .gray
        actionPromoOneOrder2.font = UIFont.systemFont(ofSize: 12)
        actionPromoOneOrder2.numberOfLines = 0
        actionPromoOneOrder2.lineBreakMode = .byWordWrapping
        actionPromoOneOrder2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(actionPromoOneOrder2)
        
        
        NSLayoutConstraint.activate([
            textLabel2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 16),
            textLabel2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: 16),
            
            imagePercent2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 16),
            imagePercent2.leftAnchor.constraint(equalTo: textLabel2.rightAnchor, constant: 4),
            
            imageInfo2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 17),
            imageInfo2.leftAnchor.constraint(equalTo: imagePercent2.rightAnchor, constant: 1),
            
            time2.topAnchor.constraint(equalTo: textLabel2.bottomAnchor, constant: 2),
            time2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: 16),
            
            actionPromoOneOrder2.topAnchor.constraint(equalTo: time2.bottomAnchor, constant: 8),
            actionPromoOneOrder2.leftAnchor.constraint(equalTo: promoCode2.leftAnchor, constant: 16),
            actionPromoOneOrder2.rightAnchor.constraint(equalTo: promoCode2.rightAnchor, constant: -8),
            actionPromoOneOrder2.bottomAnchor.constraint(equalTo: promoCode2.bottomAnchor, constant: -12)
            
            
        ])
        
        return textLabel2
    }
    
    private func createTextLabel3(in containerView: UIView, below promoCode3: UIView) -> UILabel {
        let textLabel3 = UILabel()
        textLabel3.textColor = .black
        textLabel3.font = UIFont.systemFont(ofSize: 16)
        textLabel3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(textLabel3)
        let imagePercent3 = UIImageView()
        imagePercent3.image = .percent
        imagePercent3.contentMode = .scaleAspectFill
        imagePercent3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(imagePercent3)
        let imageInfo3 = UIImageView()
        imageInfo3.image = .info
        imageInfo3.contentMode = .scaleAspectFill
        imageInfo3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(imageInfo3)
        let time3 = UILabel()
        time3.text = formattedEndDate(for: viewModel.order.promocodes[2]) ?? ""
        time3.textColor = .gray
        time3.font = UIFont.systemFont(ofSize: 14)
        time3.numberOfLines = 0
        time3.lineBreakMode = .byWordWrapping
        time3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(time3)
        
        NSLayoutConstraint.activate([
            textLabel3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 16),
            textLabel3.leftAnchor.constraint(equalTo: promoCode3.leftAnchor, constant: 16),
            
            imagePercent3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 16),
            imagePercent3.leftAnchor.constraint(equalTo: textLabel3.rightAnchor, constant: 4),
            
            imageInfo3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 17),
            imageInfo3.leftAnchor.constraint(equalTo: imagePercent3.rightAnchor, constant: 1),
            
            time3.topAnchor.constraint(equalTo: textLabel3.bottomAnchor, constant: 2),
            time3.leftAnchor.constraint(equalTo: promoCode3.leftAnchor, constant: 16)
            
        ])
        
        return textLabel3
    }
    
    private func createTextLabel4(in containerView: UIView, below promoCode4: UIView) -> UILabel {
        let textLabel4 = UILabel()
        textLabel4.textColor = .black
        textLabel4.font = UIFont.systemFont(ofSize: 16)
        textLabel4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(textLabel4)
        let imagePercent4 = UIImageView()
        imagePercent4.image = .percent
        imagePercent4.contentMode = .scaleAspectFill
        imagePercent4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(imagePercent4)
        let imageInfo4 = UIImageView()
        imageInfo4.image = .info
        imageInfo4.contentMode = .scaleAspectFill
        imageInfo4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(imageInfo4)
        let time4 = UILabel()
        time4.text = formattedEndDate(for: viewModel.order.promocodes[3]) ?? ""
        time4.textColor = .gray
        time4.font = UIFont.systemFont(ofSize: 14)
        time4.numberOfLines = 0
        time4.lineBreakMode = .byWordWrapping
        time4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(time4)
        self.time4 = time4
        
        NSLayoutConstraint.activate([
            textLabel4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 16),
            textLabel4.leftAnchor.constraint(equalTo: promoCode4.leftAnchor, constant: 16),
            
            imagePercent4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 16),
            imagePercent4.leftAnchor.constraint(equalTo: textLabel4.rightAnchor, constant: 4),
            
            imageInfo4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 17),
            imageInfo4.leftAnchor.constraint(equalTo: imagePercent4.rightAnchor, constant: 1),
            
            time4.topAnchor.constraint(equalTo: textLabel4.bottomAnchor, constant: 2),
            time4.leftAnchor.constraint(equalTo: promoCode4.leftAnchor, constant: 16)
            
        ])
        
        
        return textLabel4
    }
    
    private func createTextLabel5(in containerView: UIView, below promoCode5: UIView) -> UILabel {
        let textLabel5 = UILabel()
        textLabel5.textColor = .black
        textLabel5.font = UIFont.systemFont(ofSize: 16)
        textLabel5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(textLabel5)
        let imagePercent5 = UIImageView()
        imagePercent5.image = .percent
        imagePercent5.contentMode = .scaleAspectFill
        imagePercent5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(imagePercent5)
        let imageInfo5 = UIImageView()
        imageInfo5.image = .info
        imageInfo5.contentMode = .scaleAspectFill
        imageInfo5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(imageInfo5)
        let time5 = UILabel()
        time5.text = formattedEndDate(for: viewModel.order.promocodes[4]) ?? ""
        time5.textColor = .gray
        time5.font = UIFont.systemFont(ofSize: 14)
        time5.numberOfLines = 0
        time5.lineBreakMode = .byWordWrapping
        time5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(time5)
        
        NSLayoutConstraint.activate([
            textLabel5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 16),
            textLabel5.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: 16),
            
            imagePercent5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 16),
            imagePercent5.leftAnchor.constraint(equalTo: textLabel5.rightAnchor, constant: 4),
            
            imageInfo5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 17),
            imageInfo5.leftAnchor.constraint(equalTo: imagePercent5.rightAnchor, constant: 1),
            
            time5.topAnchor.constraint(equalTo: textLabel5.bottomAnchor, constant: 2),
            time5.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: 16)
            
        ])
        
        setUptextPromocode()
        return textLabel5
    }
    
    private func createCloseButtonPromocode(in containerView: UIView, below promoCode5: UIView) -> UIButton{
        let closePromocode = UIButton(type: .system)
        closePromocode.setTitle("Скрыть промокод", for: .normal)
        closePromocode.setTitleColor(orangeRed, for: .normal)
        closePromocode.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        closePromocode.backgroundColor = .white
        closePromocode.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(closePromocode)
        
        NSLayoutConstraint.activate([
            closePromocode.topAnchor.constraint(equalTo: promoCode5.bottomAnchor, constant: 8),
            closePromocode.leftAnchor.constraint(equalTo: promoCode5.leftAnchor, constant: 16),
            closePromocode.heightAnchor.constraint(equalToConstant: 40)
        ])
        closePromocode.addTarget(self, action: #selector(closePromocodeButtonTapped), for: .touchUpInside)
        
        return closePromocode
    }
    
    private func createSummTable(in containerView: UIView, below closePromocode: UIView) -> UIView{
        let summTable = UIView()
        summTable.backgroundColor = colorGrayLight
        summTable.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(summTable)
        
        let imageInfo6 = UIImageView()
        imageInfo6.image = .info
        imageInfo6.contentMode = .scaleAspectFill
        imageInfo6.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(imageInfo6)
        
        let priceForTwoItems = UILabel()
        priceForTwoItems.text = ""
        priceForTwoItems.textColor = .black
        priceForTwoItems.font = .systemFont(ofSize: 14)
        priceForTwoItems.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(priceForTwoItems)
        self.priceForTwoItems = priceForTwoItems
        
        let discountsText = UILabel()
        discountsText.text = "Скидки"
        discountsText.textColor = .black
        discountsText.font = .systemFont(ofSize: 14)
        discountsText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(discountsText)
        
        let promocodeText = UILabel()
        promocodeText.text = "Промокоды"
        promocodeText.textColor = .black
        promocodeText.font = .systemFont(ofSize: 14)
        promocodeText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(promocodeText)
        
        let paymentMethodText = UILabel()
        paymentMethodText.text = "Способ оплаты"
        paymentMethodText.textColor = .black
        paymentMethodText.font = .systemFont(ofSize: 14)
        paymentMethodText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(paymentMethodText)
        
        let totalText = UILabel()
        totalText.text = "Итого"
        totalText.textColor = .black
        totalText.font = .systemFont(ofSize: 18)
        totalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(totalText)
        
        let willPlaceAnOrderButton = UIButton(type: .system)
        willPlaceAnOrderButton.setTitle("Оформить заказ", for: .normal)
        willPlaceAnOrderButton.setTitleColor(.white, for: .normal)
        willPlaceAnOrderButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        willPlaceAnOrderButton.backgroundColor = orangeRed
        willPlaceAnOrderButton.layer.cornerRadius = 12
        willPlaceAnOrderButton.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(willPlaceAnOrderButton)
        
        let termsOfOffer = UILabel()
        termsOfOffer.text = "Нажимая на кнопку Оформить заказ, Вы соглашаетесь с Условиями оферты"
        termsOfOffer.textColor = .lightGray
        termsOfOffer.font = .systemFont(ofSize: 12)
        termsOfOffer.lineBreakMode = .byWordWrapping
        termsOfOffer.numberOfLines = 0
        termsOfOffer.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(termsOfOffer)
        
        let priceForTwoItemsTotalText = UILabel()
        priceForTwoItemsTotalText.text = "0 ₽"
        priceForTwoItemsTotalText.textColor = .black
        priceForTwoItemsTotalText.font = .systemFont(ofSize: 14)
        priceForTwoItemsTotalText.lineBreakMode = .byWordWrapping
        priceForTwoItemsTotalText.numberOfLines = 0
        priceForTwoItemsTotalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(priceForTwoItemsTotalText)
        self.priceForTwoItemsTotalText = priceForTwoItemsTotalText
        let discountsTotalText = UILabel()
        discountsTotalText.text = "0 ₽"
        discountsTotalText.textColor = .red
        discountsTotalText.font = .systemFont(ofSize: 14)
        discountsTotalText.lineBreakMode = .byWordWrapping
        discountsTotalText.numberOfLines = 0
        discountsTotalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(discountsTotalText)
        self.discountsTotalText = discountsTotalText
        let paymentTotalText = UILabel()
        paymentTotalText.text = "0 ₽"
        paymentTotalText.textColor = .red
        paymentTotalText.font = .systemFont(ofSize: 14)
        paymentTotalText.lineBreakMode = .byWordWrapping
        paymentTotalText.numberOfLines = 0
        paymentTotalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(paymentTotalText)
        self.paymentMethodText = paymentTotalText
        let total = UILabel()
        total.text = "0 ₽"
        total.textColor = .black
        total.font = .systemFont(ofSize: 18)
        total.lineBreakMode = .byWordWrapping
        total.numberOfLines = 0
        total.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(total)
        self.total = total
        let promoCodeTotalText = UILabel()
        promoCodeTotalText.text = "0 ₽"
        promoCodeTotalText.textColor = greenDark
        promoCodeTotalText.font = .systemFont(ofSize: 14)
        promoCodeTotalText.lineBreakMode = .byWordWrapping
        promoCodeTotalText.numberOfLines = 0
        promoCodeTotalText.translatesAutoresizingMaskIntoConstraints = false
        summTable.addSubview(promoCodeTotalText)
        self.promoCodeTotalText = promoCodeTotalText
        
        NSLayoutConstraint.activate([
            summTable.topAnchor.constraint(equalTo: closePromocode.bottomAnchor, constant: 24),
            summTable.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            summTable.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            summTable.heightAnchor.constraint(equalToConstant: 349),
            summTable.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            imageInfo6.topAnchor.constraint(equalTo: discountsText.topAnchor, constant: 30),
            imageInfo6.leftAnchor.constraint(equalTo: promocodeText.rightAnchor, constant: 4),
            
            priceForTwoItems.topAnchor.constraint(equalTo: summTable.topAnchor, constant: 24),
            priceForTwoItems.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            priceForTwoItemsTotalText.topAnchor.constraint(equalTo: summTable.topAnchor, constant: 24),
            priceForTwoItemsTotalText.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -32),
            
            discountsText.topAnchor.constraint(equalTo: priceForTwoItems.topAnchor, constant: 30),
            discountsText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            promocodeText.topAnchor.constraint(equalTo: discountsText.topAnchor, constant: 30),
            promocodeText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            promoCodeTotalText.topAnchor.constraint(equalTo: summTable.topAnchor, constant: 84),
            promoCodeTotalText.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -32),
            
            paymentMethodText.topAnchor.constraint(equalTo: promocodeText.topAnchor, constant: 30),
            paymentMethodText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            paymentTotalText.topAnchor.constraint(equalTo: summTable.topAnchor, constant: 114),
            paymentTotalText.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -32),
            
            totalText.topAnchor.constraint(equalTo: paymentMethodText.topAnchor, constant: 33),
            totalText.leftAnchor.constraint(equalTo: summTable.leftAnchor, constant: 32),
            
            willPlaceAnOrderButton.centerYAnchor.constraint(equalTo: totalText.bottomAnchor, constant: 40),
            willPlaceAnOrderButton.centerXAnchor.constraint(equalTo: summTable.centerXAnchor),
            willPlaceAnOrderButton.widthAnchor.constraint(equalToConstant: 345),
            willPlaceAnOrderButton.heightAnchor.constraint(equalToConstant: 54),
            
            
            termsOfOffer.topAnchor.constraint(equalTo: willPlaceAnOrderButton.bottomAnchor, constant: 16),
            termsOfOffer.leftAnchor.constraint(equalTo: willPlaceAnOrderButton.leftAnchor, constant: 50),
            termsOfOffer.rightAnchor.constraint(equalTo: willPlaceAnOrderButton.rightAnchor, constant: -20),
            
            discountsTotalText.topAnchor.constraint(equalTo: priceForTwoItemsTotalText.topAnchor, constant: 30),
            discountsTotalText.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -32),
            
            total.topAnchor.constraint(equalTo: paymentMethodText.topAnchor, constant: 33),
            total.rightAnchor.constraint(equalTo: summTable.rightAnchor, constant: -32)
            
            
        ])
        itmesText()
        showOrder(in: containerView)
        setUpTwoItems(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, in: containerView)
        
        willPlaceAnOrderButton.addTarget(self, action: #selector(willPlaceAnOrderButtonTepped), for: .touchUpInside)
        
        return summTable
        
    }
    
    
    private func createSwithes(in containerView: UIView, below promoCode1: UIView, below promoCode2: UIView, below promoCode3: UIView, below promoCode4: UIView, below promoCode5: UIView) -> UISwitch {
        
        let promocodes1Switch = UISwitch()
        promocodes1Switch.isOn = false
        promocodes1Switch.onTintColor = orangeRed
        promocodes1Switch.translatesAutoresizingMaskIntoConstraints = false
        promoCode1.addSubview(promocodes1Switch)
        let promocodes2Switch2 = UISwitch()
        promocodes2Switch2.isOn = false
        promocodes2Switch2.onTintColor = orangeRed
        promocodes2Switch2.translatesAutoresizingMaskIntoConstraints = false
        promoCode2.addSubview(promocodes2Switch2)
        let promocodes3Switch3 = UISwitch()
        promocodes3Switch3.isOn = false
        promocodes3Switch3.onTintColor = orangeRed
        promocodes3Switch3.translatesAutoresizingMaskIntoConstraints = false
        promoCode3.addSubview(promocodes3Switch3)
        let promocodes4Switch4 = UISwitch()
        promocodes4Switch4.isOn = false
        promocodes4Switch4.onTintColor = orangeRed
        promocodes4Switch4.translatesAutoresizingMaskIntoConstraints = false
        promoCode4.addSubview(promocodes4Switch4)
        let promocodes5Switch5 = UISwitch()
        promocodes5Switch5.isOn = false
        promocodes5Switch5.onTintColor = orangeRed
        promocodes5Switch5.translatesAutoresizingMaskIntoConstraints = false
        promoCode5.addSubview(promocodes5Switch5)
        
        NSLayoutConstraint.activate([
            promocodes1Switch.topAnchor.constraint(equalTo: promoCode1.topAnchor, constant: 21),
            promocodes1Switch.rightAnchor.constraint(equalTo: promoCode1.rightAnchor, constant: -20),
            
            promocodes2Switch2.topAnchor.constraint(equalTo: promoCode2.topAnchor, constant: 21),
            promocodes2Switch2.rightAnchor.constraint(equalTo: promoCode2.rightAnchor, constant: -20),
            
            promocodes3Switch3.topAnchor.constraint(equalTo: promoCode3.topAnchor, constant: 16.5),
            promocodes3Switch3.rightAnchor.constraint(equalTo: promoCode3.rightAnchor, constant: -20),
            
            promocodes4Switch4.topAnchor.constraint(equalTo: promoCode4.topAnchor, constant: 16.5),
            promocodes4Switch4.rightAnchor.constraint(equalTo: promoCode4.rightAnchor, constant: -20),
            
            promocodes5Switch5.topAnchor.constraint(equalTo: promoCode5.topAnchor, constant: 16.5),
            promocodes5Switch5.rightAnchor.constraint(equalTo: promoCode5.rightAnchor, constant: -20)
            
        ])
        
        
        
        promocodes1Switch.addTarget(self, action: #selector(promoCode1SwitchToggled(_:)), for: .valueChanged)
        
        promocodes2Switch2.addTarget(self, action: #selector(promoCode2SwitchToggled(_:)), for: .valueChanged)
        
        promocodes3Switch3.addTarget(self, action: #selector(promoCode3SwitchToggled(_:)), for: .valueChanged)
        
        promocodes4Switch4.addTarget(self, action: #selector(promoCode4SwitchToggled(_:)), for: .valueChanged)
        
        promocodes5Switch5.addTarget(self, action: #selector(promoCode5SwitchToggled(_:)), for: .valueChanged)
        
        
        return promocodes1Switch
        
        
    }
    
    private func itmesText() {
        if viewModel.order.products.count > 4 {
            priceForTwoItems.text = "Цена за \(viewModel.order.products.count) товаров"
        } else {
            priceForTwoItems.text = "Цена за \(viewModel.order.products.count) товара"
        }
        if  viewModel.order.products.count == 1 {
            priceForTwoItems.text = "Цена за один товар"
        }
        
    }
    
    private func showOrder(in containerView: UIView) {
        if viewModel.order.products.isEmpty {
            let error3 = UIButton(type: .custom)
            error3.setTitle("Нет продуктов в заказе", for: .normal)
            error3.setTitleColor(.white, for: .normal)
            error3.titleLabel?.lineBreakMode = .byWordWrapping
            error3.titleLabel?.numberOfLines = 0
            error3.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            error3.backgroundColor = orangeRed
            error3.layer.cornerRadius = 20
            error3.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(error3)
            
            NSLayoutConstraint.activate([
                error3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                error3.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
                
                error3.widthAnchor.constraint(equalToConstant: 360),
                error3.heightAnchor.constraint(equalToConstant: 100)
                
            ])
            error3.addTarget(self, action: #selector(error3ButtonTapped), for: .touchUpInside)
            
            
        }
        error3.removeFromSuperview()
        
        
        
        
        //  guard viewModel.product1.price != 0 || viewModel.product2.price != 0 else {
        
        
        
        
    }
    
    private func setUptextPromocode() {
        textLabel1.text = "\(viewModel.order.promocodes[0].title)"
        textLabel2.text = "\(viewModel.order.promocodes[1].title)"
        textLabel3.text = "\(viewModel.order.promocodes[2].title)"
        textLabel4.text = "\(viewModel.order.promocodes[3].title)"
        textLabel5.text = "\(viewModel.order.promocodes[4].title)"
        titleSmollBar.text = "\(viewModel.order.screenTitle)"
        
        
    }
    
    
    func  setUpTwoItems (priceForTwoItemsTotalText: UILabel, total: UILabel, in containerView: UIView) {
        let totalPriceProduct = viewModel.order.products.reduce(0) { $0 + $1.price}
        let totalPriceProductInt = Int(totalPriceProduct)
        priceForTwoItemsTotalText.text = "\(totalPriceProductInt) ₽"
        
        guard totalPriceProductInt != 0 else {
            let error3 = UIButton(type: .custom)
            error3.setTitle("У продукта стоимость должна быть больше 0", for: .normal)
            error3.setTitleColor(.white, for: .normal)
            error3.titleLabel?.lineBreakMode = .byWordWrapping
            error3.titleLabel?.numberOfLines = 0
            error3.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            error3.backgroundColor = orangeRed
            error3.layer.cornerRadius = 20
            error3.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(error3)
            
            NSLayoutConstraint.activate([
                error3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                error3.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
                
                error3.widthAnchor.constraint(equalToConstant: 360),
                error3.heightAnchor.constraint(equalToConstant: 100)
                
            ])
            error3.addTarget(self, action: #selector(error3ButtonTapped), for: .touchUpInside)
            
            return
        }
        
        
        
        let paymentDiscount = viewModel.order.paymentDiscount ?? 0
        var totalPaymentDisc: Double = 0
        if paymentDiscount > 0 {
            totalPaymentDisc = Double(totalPriceProduct * ( paymentDiscount / 100))
            let totalPaimentDiscInt = Int(totalPaymentDisc)
            paymentMethodText.text = "\(-totalPaimentDiscInt) ₽"
        }
        
        
        let baseDiscount = viewModel.order.baseDiscount ?? 0
        var totalBaseDisc: Double = 0
        if baseDiscount > 0 {
            totalBaseDisc = Double((totalPriceProduct  * (baseDiscount / 100)))
            let totalBaseDiskText = Int(totalBaseDisc)
            discountsTotalText.text = "\(-totalBaseDiskText) ₽"
        }
        
        let baseDiscounts = totalPriceProduct - (totalPaymentDisc + totalBaseDisc)
        let baseDiscountsInt = Int(baseDiscounts)
        total.text = "\(baseDiscountsInt) ₽"
        
    }
    
    
    
    func setUpUpdate(priceForTwoItemsTotalText: UILabel, total: UILabel, discountsTotalText: UILabel, promoCodeTotalText: UILabel) {
        let totalPriceProduct = viewModel.order.products.reduce(0) { $0 + $1.price }
        let totalPriceProductInt = Int(totalPriceProduct)
        priceForTwoItemsTotalText.text = "\(totalPriceProductInt) ₽"
        
        // Применение базовой скидки
        var totalWithDiscount = totalPriceProduct
        
        if viewModel.order.baseDiscount == nil, viewModel.order.paymentDiscount == nil {
            paymentMethodText.text = "0"
            discountsTotalText.text = "0"
        }
        
        if let baseDiscount = viewModel.order.baseDiscount, let paymentDisc = viewModel.order.paymentDiscount {
            
            totalWithDiscount -= totalPriceProduct * (paymentDisc / 100)
            totalWithDiscount -= totalPriceProduct * (baseDiscount / 100)
            
        }
        
        
        
        // Применение активных промокодов
        var totalPromocodeDiscount: Double = 0
        let activePromocodes = viewModel.order.promocodes.filter { $0.active } // Учитываем только активные промокоды
        
        for promocode in activePromocodes {
            let discount = totalWithDiscount * (Double(promocode.percent) / 100)
            totalPromocodeDiscount += discount
        }
        
        // Обновляем текстовые поля
        let promoCodeDiscountInt = Int(totalPromocodeDiscount)
        promoCodeTotalText.text = "\(-promoCodeDiscountInt) ₽"
        
        // Пересчет итоговой стоимости
        let finalTotal = totalWithDiscount - totalPromocodeDiscount
        let finalTotalInt = Int(finalTotal)
        total.text = "\(finalTotalInt) ₽"
        
        
        if promoCodeDiscountInt >= finalTotalInt {
            let error = UIButton(type: .custom)
            error.setTitle("Сумма скидки не может быть больше суммы товара.", for: .normal)
            error.setTitleColor(.white, for: .normal)
            error.titleLabel?.lineBreakMode = .byWordWrapping
            error.titleLabel?.numberOfLines = 0
            error.titleLabel?.font = UIFont.systemFont(ofSize: 20)
            error.backgroundColor = orangeRed
            error.layer.cornerRadius = 20
            error.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(error)
            
            NSLayoutConstraint.activate([
                error.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                error.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
                error.widthAnchor.constraint(equalToConstant: 360),
                error.heightAnchor.constraint(equalToConstant: 100)
                
            ])
            
            error.addTarget(self, action: #selector(errorButtonTapped), for: .touchUpInside)
        }
        
    }
    
    
    @objc func promoCode1SwitchToggled(_ sender: UISwitch) {
        promoCodeSwitchToggled(sender, at: 0)
        
        //       viewModel.order.promocodes[0].active = sender.isOn
        //       setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
        
    }
    
    @objc func promoCode2SwitchToggled(_ sender: UISwitch) {
        promoCodeSwitchToggled(sender, at: 1)
        //       let totalPriceProduct = viewModel.order.products.reduce(0) { $0 + $1.price }
        //       if totalPriceProduct < 30000 {
        //           viewModel.order.promocodes[1].active = sender.isEnabled == false
        //            sender.setOn(false, animated: true)
        //       } else {
        //           viewModel.order.promocodes[1].active = sender.isOn
        //           setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
        //       }
    }
    
    @objc func promoCode3SwitchToggled(_ sender: UISwitch) {
        promoCodeSwitchToggled(sender, at: 2)
        //       viewModel.order.promocodes[2].active = sender.isOn
        //       setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
        
        
    }
    
    @objc func promoCode4SwitchToggled(_ sender: UISwitch) {
        promoCodeSwitchToggled(sender, at: 3)
        //      viewModel.order.promocodes[3].active = sender.isOn
        //      setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
        
    }
    
    @objc func promoCode5SwitchToggled(_ sender: UISwitch) {
        promoCodeSwitchToggled(sender, at: 4)
        //      viewModel.order.promocodes[4].active = sender.isOn
        //      setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
        
    }
    
    
    @objc func promocodeButtonTapped() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.navigationController?.pushViewController(ViewController2(), animated: true)
          //  let vs = ViewController2()
          //  self?.present(vs, animated: true)
        }
        print("Промокод нажат")
    }
    
    @objc func closePromocodeButtonTapped() {
        print("Промокод скрыт")
    }
    
    @objc func willPlaceAnOrderButtonTepped() {
        print("Заказ оформлен")
    }
    
    @objc func errorButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5, animations: {
                sender.alpha = 0.5
                sender.backgroundColor = .clear
            }) { _ in
                
                sender.removeFromSuperview()
            }
        }
    }
    
    @objc func error2ButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5, animations: {
                sender.alpha = 0.5
                sender.backgroundColor = .clear
            }) { _ in
                
                sender.removeFromSuperview()
            }
        }
    }
    
    @objc func error3ButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5, animations: {
                sender.alpha = 0.5
                sender.backgroundColor = .clear
            }) { _ in
                
                sender.removeFromSuperview()
            }
        }
    }
    
    private func activePromoCodesCount() -> Int {
        
        return viewModel.order.promocodes.filter { $0.active }.count
    }
    
    @objc func promoCodeSwitchToggled(_ sender: UISwitch, at index: Int) {
        let totalPriceProduct = viewModel.order.products.reduce(0) { $0 + $1.price }
        
        
        if index == 1 && totalPriceProduct < 30000 {
            sender.setOn(false, animated: true)
            viewModel.order.promocodes[index].active = false
            return
        }
        
        if sender.isOn && activePromoCodesCount() >= 2 {
            sender.setOn(false, animated: true)
            return
        }
        viewModel.order.promocodes[index].active = sender.isOn
          setUpUpdate(priceForTwoItemsTotalText: priceForTwoItemsTotalText, total: total, discountsTotalText: discountsTotalText, promoCodeTotalText: promoCodeTotalText)
    }
    
    func formattedEndDate(for promocode: Order.Promocode) -> String? {
          guard let endDate = promocode.endDate else { return nil }
          let dateFormatter = DateFormatter()
          dateFormatter.locale = Locale(identifier: "ru_RU")
          dateFormatter.dateFormat = "d MMMM"
          return "По \(dateFormatter.string(from: endDate))"
      }
    
    
}




   
    

