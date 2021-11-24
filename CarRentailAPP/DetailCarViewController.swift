//
//  DetailCarViewController.swift
//  CarRentailAPP
//
//  Created by Alisa Ts on 24.11.2021.
//

import UIKit

class DetailCarViewController: UIViewController {

    @IBOutlet var imageCar: UIImageView!
    @IBOutlet var carDescriptionLabel: UILabel!
    
    
    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCar.image = UIImage(named: car.image)
        carDescriptionLabel.text =
        """
            \(car.carNames) \n
            Данный автомобиль имеет \(car.driveUnits) привод.
            \(car.horsesPower) лошадиных сил.
            Двигатель \(car.engine) л.
            Коробка передач \(car.transmission) \n
            Цена: \(car.price) в сутки
        """
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let reserveVC = segue.destination as? ReserveViewController else { return }
        reserveVC.car = car
    }
}
