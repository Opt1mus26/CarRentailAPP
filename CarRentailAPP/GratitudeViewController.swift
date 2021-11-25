//
//  GratitudeViewController.swift
//  CarRentailAPP
//
//  Created by Pavel Tsyganov on 24.11.2021.
//

import UIKit

class GratitudeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateFromLabel: UILabel!
    @IBOutlet var gratitudeTF: UILabel!
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var carImage: UIImageView!
    
    var login: Login!
    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "BMW X1")
        backgroundImage.alpha = 0.3
        carImage.image = UIImage(named: car.carNames)
        nameLabel.text = "\(login.fullname), спасибо, что выбрали нашу компанию!"
        dateFromLabel.text = "Бронь с \(login.dateFrom) - по \(login.dateBefore)!"
        gratitudeTF.text = String(car.carNames)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutUsVC = segue.destination as? AboutUsViewController else { return }
        aboutUsVC.login = login
    }
}
