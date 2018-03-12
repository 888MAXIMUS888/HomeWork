//
//  SpaceTableViewCell.swift
//  Zaika Maxim HomeNavigation
//
//  Created by Максим Заїка on 11.03.2018.
//  Copyright © 2018 Максим Заїка. All rights reserved.
//

import UIKit

class SpaceTableViewCell: UITableViewCell {

    @IBOutlet weak var SpaceCell: UIImageView!
    @IBOutlet weak var activitiInd: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setap(With imageURL: String){
        activitiInd.startAnimating()
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            if let Url = URL(string: imageURL),
                let data = try? Data(contentsOf: Url),
                let image = UIImage(data: data){
                DispatchQueue.main.async {
                    self?.activitiInd.stopAnimating()
                    self?.SpaceCell.image = image
                }
            }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
