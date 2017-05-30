//
//  MRPrescriptionViewController.swift
//  MyRescribe
//
//  Created by Hardik Jain on 30/05/17.
//  Copyright © 2017 Hardik Jain. All rights reserved.
//

import UIKit

class MRPrescriptionViewController: UIViewController {
  
  @IBOutlet weak var cardCollectionView: UICollectionView!
  
  var isExpanded: Bool = false
  var expandBtn: UIButton?
  var expandedArray = [Int]()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func onExpandButtonClick(sender: UIButton) {
    print("Expand Button CLicked")
    if isExpanded {
      isExpanded = false
      expandedArray.append(sender.tag)
      self.cardCollectionView.reloadItems(at: [NSIndexPath(row: sender.tag, section: 0) as IndexPath])
    } else {
      isExpanded = true
      self.cardCollectionView.reloadItems(at: [NSIndexPath(row: sender.tag, section: 0) as IndexPath])
    }
  }
}

extension MRPrescriptionViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 15
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "prescription_collectionview_cell", for: indexPath) as! MRPrescriptionCollectionViewCell
    // Configure the cell
    cell.bgView.layer.cornerRadius = 5.0
    cell.bgView.layer.borderWidth = 0.5
    cell.bgView.layer.borderColor = UIColor.lightGray.cgColor
    cell.bgView.layer.masksToBounds = true
    
    cell.layer.borderColor = UIColor.red.cgColor
    cell.layer.cornerRadius = 5.0
    cell.layer.shadowColor = UIColor.lightGray.cgColor
    cell.layer.shadowOffset = CGSize(width: 5, height: 5)
    cell.layer.shadowRadius = 2.0
    cell.layer.shadowOpacity = 1.0
    cell.layer.masksToBounds = true
    
    self.expandBtn = cell.expandBtn
    self.expandBtn?.tag = indexPath.row
    self.expandBtn?.addTarget(self, action: #selector(onExpandButtonClick(sender:)), for: .touchUpInside)
    
    return cell
  }
}

extension MRPrescriptionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if isExpanded && indexPath.row == self.expandBtn?.tag {
      return CGSize(width: self.cardCollectionView.frame.size.width-30, height: 289)
    } else {
      return CGSize(width: self.cardCollectionView.frame.size.width-30, height: 87)
    }
  }
}

