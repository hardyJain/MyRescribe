//
//  MREditPrescriptionViewController.swift
//  MyRescribe
//
//  Created by Hardik Jain on 30/05/17.
//  Copyright © 2017 Hardik Jain. All rights reserved.
//

import UIKit

class MREditPrescriptionViewController: UIViewController {
  
  @IBOutlet weak var epCollectionView: UICollectionView!
  let cellFirstReuseIdentifier = "edit_prescription_first_cell"
  let cellSecondReuseIdentifier = "edit_prescription_second_cell"
  let cellThirdReuseIdentifier = "edit_prescription_third_cell"

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension MREditPrescriptionViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if indexPath.row == 0 {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellFirstReuseIdentifier, for: indexPath) as! MREditPrescriptionFirstCell
      cell.firstCellBg.layer.cornerRadius = 5.0
      cell.firstCellBg.layer.borderWidth = 0.5
      cell.firstCellBg.layer.borderColor = UIColor.lightGray.cgColor
      cell.firstCellBg.layer.masksToBounds = true
      
      cell.layer.borderColor = UIColor.red.cgColor
      cell.layer.cornerRadius = 5.0
      cell.layer.shadowColor = UIColor.lightGray.cgColor
      cell.layer.shadowOffset = CGSize(width: 5, height: 5)
      cell.layer.shadowRadius = 2.0
      cell.layer.shadowOpacity = 1.0
      cell.layer.masksToBounds = true
      
      return cell
    } else if indexPath.row == 1 {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellSecondReuseIdentifier, for: indexPath) as! MREditPrescriptionSecondCell
      cell.secondCellBg.layer.cornerRadius = 5.0
      cell.secondCellBg.layer.borderWidth = 0.5
      cell.secondCellBg.layer.borderColor = UIColor.lightGray.cgColor
      cell.secondCellBg.layer.masksToBounds = true
      
      cell.layer.borderColor = UIColor.red.cgColor
      cell.layer.cornerRadius = 5.0
      cell.layer.shadowColor = UIColor.lightGray.cgColor
      cell.layer.shadowOffset = CGSize(width: 5, height: 5)
      cell.layer.shadowRadius = 2.0
      cell.layer.shadowOpacity = 1.0
      cell.layer.masksToBounds = true
      
      return cell
    } else {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellThirdReuseIdentifier, for: indexPath) as! MREditPrescriptionThirdCell
      
      cell.btnTapering.layer.cornerRadius = 2.0
      cell.btnTapering.layer.borderWidth = 2.0
      cell.btnTapering.layer.borderColor = UIColor.darkGray.cgColor
      cell.btnTapering.layer.masksToBounds = true
      
      cell.btnOverwrite.layer.cornerRadius = 2.0
      cell.btnOverwrite.layer.borderWidth = 2.0
      cell.btnOverwrite.layer.borderColor = UIColor.darkGray.cgColor
      cell.btnOverwrite.layer.masksToBounds = true
      
      cell.thirdCellBg.layer.cornerRadius = 5.0
      cell.thirdCellBg.layer.borderWidth = 0.5
      cell.thirdCellBg.layer.borderColor = UIColor.lightGray.cgColor
      cell.thirdCellBg.layer.masksToBounds = true
      
      cell.txtView.layer.borderWidth = 1.0
      cell.txtView.layer.borderColor = UIColor.darkGray.cgColor
      
      cell.layer.borderColor = UIColor.red.cgColor
      cell.layer.cornerRadius = 5.0
      cell.layer.shadowColor = UIColor.lightGray.cgColor
      cell.layer.shadowOffset = CGSize(width: 5, height: 5)
      cell.layer.shadowRadius = 2.0
      cell.layer.shadowOpacity = 1.0
      cell.layer.masksToBounds = true
      
      return cell
    }
  }
}

extension MREditPrescriptionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if indexPath.row == 0 {
      return CGSize(width: self.epCollectionView.frame.size.width-30, height: 207)
    } else if indexPath.row == 1 {
      return CGSize(width: self.epCollectionView.frame.size.width-30, height: 141)
    } else {
      return CGSize(width: self.epCollectionView.frame.size.width-30, height: 185)
    }
  }
}

