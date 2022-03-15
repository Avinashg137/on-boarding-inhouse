//
//  onboardingCollectionViewCell.swift
//  on boarding inhouse
//
//  Created by MAC OS on 14/03/22.
//

import UIKit

class onboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: onboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideimageview: UIImageView!
    @IBOutlet weak var slidetitlelbl: UILabel!
    @IBOutlet weak var slidedielbl: UILabel!
    
    func setup(_ slide: Onboardingslide) {
        
        slideimageview.image = slide.image
        slidetitlelbl.text = slide.title
        slidedielbl.text = slide.description
    }
}
