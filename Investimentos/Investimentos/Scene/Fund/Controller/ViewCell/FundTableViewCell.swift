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
      
    func setup (fund: Fund) {
        self.title.text = fund.simpleName
        
        //self.title.text = fund.Operability
        //self.title.text = fund.Specification
        
        
        
        self.view.layer.cornerRadius = 8.0
    }
}
