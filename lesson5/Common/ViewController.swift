//
//  ViewController.swift
//  lesson5
//
//  Created by MacBook Pro on 22/1/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
  
    
    private let simpleTableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(simpleTableView)
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        simpleTableView.dataSource = self
        
        simpleTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            simpleTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            simpleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simpleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simpleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "cell: \(indexPath.row)"
//        return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        return cell
        
    }
    


}

