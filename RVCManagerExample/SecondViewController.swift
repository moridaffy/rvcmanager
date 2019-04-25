//
//  SecondViewController.swift
//  RVCManagerExample
//
//  Created by Максим Скрябин on 25/04/2019.
//  Copyright © 2019 MSKR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction private func buttonTapped(sender: UIButton) {
    guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController else { return }
    
    RootViewControllerManager.shared.change(to: secondViewController, withAnimation: RootViewControllerManager.AnimationType(rawValue: sender.tag))
  }
  
}
