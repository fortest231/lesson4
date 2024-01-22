//
//  CustomTableViewCEll.swift
//  lesson5
//
//  Created by MacBook Pro on 22/1/24.
//

import SwiftUI

class CustomTableViewCell: UITableViewCell {
    
    private var cellView: UIView = {
        let cell = UIView()
        cell.backgroundColor = .cyan
        cell.layer.cornerRadius = 16
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            cellView.heightAnchor.constraint(equalToConstant: 200)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
