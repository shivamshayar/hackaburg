//
//  settings.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import UIKit

class settings: UIViewController {

    @IBOutlet weak var profile: UIImageView!
    
    let titles = ["First Name", "Last Name", "Country", "Email", "Contact No"]
    let value = ["Shivam", "Parmar", "Germany", "shivam@gmail.com", "017646293536"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.profile.layer.cornerRadius = 20
    }
}

//MARK: - UItableView

extension settings: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell") as! settingCell
        cell.lbl.text = titles[indexPath.row]
        cell.lbl2.text = value[indexPath.row]
        return cell
    }
}

//MARK: - UItableViewCell

class settingCell: UITableViewCell {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl2: UILabel!
}
