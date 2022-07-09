//
//  loginVC.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import UIKit
import Alamofire

class loginVC: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var loginO: UIButton!
    @IBOutlet weak var emailId: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        parkingSubmit()
//        print(tomorrowDate())
        emailId.text = "shivam.parmar12@gmail.com"
        password.text = "shivam123"
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.loginO.layer.cornerRadius = 25
    }
    
    @IBAction func Login(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tabbar") as! tabbar
        vc.modalPresentationStyle = .fullScreen
        let nev = UINavigationController(rootViewController: vc)
        nev.modalPresentationStyle = .fullScreen
        self.present(nev, animated: true)
    }
    
}
