//
//  schedule.swift
//  hackaburg
//
//  Created by Shivam on 08/07/22.
//

import UIKit

class schedule: UIViewController {

    @IBOutlet weak var addNew: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNew.addTarget(self, action: #selector(addNewSchedule), for: .touchUpInside)
    }
    
    @objc func addNewSchedule() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "formVC") as! formVC
//        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true)
    }
    
}

// MARK: - TableView

extension schedule: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onsiteCell") as! onsiteCell
        
        return cell
    }
}

//MARK: - Cell

class onsiteCell: UITableViewCell {
    
}
