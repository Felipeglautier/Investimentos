//
//  FundTableViewCell.swift
//  Investimentos
//
//  Created by Lipe glautier on 10/04/21.
//

import UIKit

class FundTableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var percentage: UILabel!
    @IBOutlet weak var mininalApplication: UILabel!
      
    func setup (name: String) {
        self.title.text = name
        
        self.view.layer.cornerRadius = 8.0
    }
}