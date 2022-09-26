//
//  PillLayoutCollectionViewCell.swift
//  Task_CustomLayouts
//
//  Created by Esraa Khaled   on 01/09/2022.
//

import UIKit

class PillLayoutCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelText: UILabel!
    
    static let pillHeight: CGFloat = 40.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        contentView.backgroundColor = backColor
    }
    
    func setLabel(_ text: String?) {
        self.labelText.text = text
    }
    override var isSelected: Bool {
           didSet {
               contentView.backgroundColor = backColor
           }
       }
    private var backColor: UIColor{
           return isSelected ? UIColor.purple: UIColor.white
       }
}

private extension PillLayoutCollectionViewCell {
    
    func setupView() {
        self.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = PillLayoutCollectionViewCell.pillHeight / 2
    }
}
