//
//  home.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import UIKit

class home: UIViewController {
    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var dateLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yesBtn.layer.cornerRadius = 25
        dateLbl.text = tomorrowDate()
    }
    
    @IBAction func yesButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "formVC") as! formVC
        self.present(vc, animated: true)
    }
    
}
