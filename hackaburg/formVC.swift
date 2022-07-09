//
//  form.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import UIKit
import iOSDropDown
import Alamofire


class formVC: UIViewController {
    
    @IBOutlet weak var mealDropdown: DropDown!
    @IBOutlet weak var parkingDropdown: DropDown!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealDropdown.arrowColor = UIColor(named: "newYellow")!
        parkingDropdown.arrowColor = UIColor(named: "newYellow")!
        mealDropdown.rowBackgroundColor = .lightGray
        parkingDropdown.rowBackgroundColor = .lightGray
        mealDropdown.inputView = UIView()
        parkingDropdown.inputView = UIView()
    }
    
    override func viewDidLayoutSubviews() {
        submitBtn.layer.cornerRadius = 25
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mealDropdown.optionArray = ["None", "Vegan", "Veg", "Non Veg"]
        parkingDropdown.optionArray = ["Yes", "No"]
    }

    @IBAction func submit(_ sender: Any) {
        print(mealDropdown.text)
        officebooking()
    }
    
    func officebooking() {
        let url = "https://hackaburg22.herokuapp.com/officebookings/"
        let parameters = [ "user_id": "https://hackaburg22.herokuapp.com/users/\(userId)/" ,
                           "date":today ] as [String : Any]
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { responce in
            if (responce.error != nil) {
                print(responce.error!)
            }else {
                print(responce.value)
                self.parkingSubmit()
            }
        }
    }
    
    func parkingSubmit() {
        let url = "https://hackaburg22.herokuapp.com/parkings/"
        let parameters = [ "user_id": "https://hackaburg22.herokuapp.com/users/\(userId)/",
                           "need_parking":"1",
                           "date":today ]
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { responce in
            if (responce.error != nil) {
                print(responce.error!)
            }else {
                print(responce.value)
                self.dismiss(animated: true)
            }
        }
    }
}

