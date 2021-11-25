//
//  WelcomeViewController.swift
//  CarRentailAPP
//
//  Created by Alisa Ts on 24.11.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var headerImage: UIImageView!
    @IBOutlet var textLabel: UILabel!
    
    private var carsList = Car.getCarList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerImage.image = UIImage(named: "BMW X1")
        textLabel.text =
        """
            Позвольте найти для вас идеальный автомобиль.\n
            Подберем на любой вкус и кошелек, продолжительность проката от 1 часа до нескольких месяцев!\n
            Бронируйте прямо в приложении
        """
    }
    @IBAction func unwind(for Segue: UIStoryboardSegue) {
        
    }
}
