//
//  AboutUsViewController.swift
//  CarRentailAPP
//
//  Created by Pavel Tsyganov on 24.11.2021.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    @IBOutlet var fullNameTF: UILabel!
    @IBOutlet var aboutUsImage: UIImageView!
    @IBOutlet var anotherAboutUsImage: UIImageView!
    @IBOutlet var aboutUsLabel: UILabel!
    @IBOutlet var anotherAboutUsLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    var login: Login!
    
    private var personOne = AboutUs(
                                    name: "Pavel",
                                    lastName: "Tsyganov",
                                    address: "Nizhniy Novgorod, st.Preobrazhenskaya, 10",
                                    email: "opt1mus26@icloud.com",
                                    phone: "+79101446015"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameTF.text = "Мы ждем Вас \(login.fullname)"
        aboutUsImage.layer.cornerRadius = aboutUsImage.frame.size.width / 2
        anotherAboutUsImage.layer.cornerRadius = anotherAboutUsImage.frame.size.width / 2
        aboutUsImage.image = UIImage(named: personOne.fullName)
        anotherAboutUsImage.image = UIImage(named: "Alisa Tsyganova")
        aboutUsLabel.text = String(personOne.fullName)
        anotherAboutUsLabel.text = String("Alisa Tsyganova")
        addressLabel.text = String(
                """
                    \(personOne.address)
                \n
                    \(personOne.email)
                \n
                    \(personOne.phone)
                """
        )
    }
}
