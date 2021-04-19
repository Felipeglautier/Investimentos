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
    @IBOutlet weak var fundRiskProfileName: UILabel!
    @IBOutlet weak var mininalApplication: UILabel!
      
    func setup (fund: Fund) {
        self.title.text = fund.simpleName
        self.fundRiskProfileName.text = fund.specification.fundSuitabilityProfile.name
        self.mininalApplication.text = "R$ \(fund.operability.minimumInitialApplicationAmount)" 
        
        self.view.layer.cornerRadius = 8.0
        
         
    }
    
}


