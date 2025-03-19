//
//  ViewController.swift
//  UITable
//
//  Created by Екатерина Яцкевич on 19.03.25.
//

import UIKit

class ViewController: UIViewController {

    var data = TableData.createData()
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      return $0
    }(UITableView(frame: view.frame, style: .insetGrouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
      
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = data[indexPath.section][indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        config.text = item.text
        config.secondaryText = item.description
        config.image = UIImage(systemName: item.image)
        
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: 
            "USERS"
        case 1:
            "GROUPS"
        default:
            nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0:
            "Athletes who won the competition"
        default:
            nil
        }
    }
    
}
