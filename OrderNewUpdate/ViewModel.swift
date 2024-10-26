//
//  ViewModel.swift
//  OrderNewUpdate
//
//  Created by Александр Белый on 23.10.2024.
//
import Foundation

class ViewModel {
    
      var order: Order


   
    let product1 = Order.Product(price: 2500, title: "Наушники")
    let product2 = Order.Product(price: 2500, title: "Фен")
    

    
    let promo1 = Order.Promocode(title: "Hello", percent: 5, endDate: Date(), info: "-5%", active: false)
    let promo2 = Order.Promocode(title: "Vesna23", percent: 5, endDate: Date(), info: "-5%", active: false)
    let promo3 = Order.Promocode(title: "4300162112534", percent: 5, endDate: Date(), info: "-5%", active: false)
    let promo4 = Order.Promocode(title: "4300162112534", percent: 5, endDate: Date(), info: "-5%", active: false)
    let promo5 = Order.Promocode(title: "4300162112534", percent: 5, endDate: Date(), info: "-5%", active: false)
      
     
      init() {
          order = Order(screenTitle: "Оформление заказа",
                        promocodes: [promo1, promo2, promo3, promo4, promo5],
                        products: [product1, product2],
                        paymentDiscount: 10,
                        baseDiscount: 10)

      }
    
  
    
}
