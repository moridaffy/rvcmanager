//
//  FirstViewController.swift
//  RVCManagerExample
//
//  Created by Максим Скрябин on 25/04/2019.
//  Copyright © 2019 MSKR. All rights reserved.
//

import UIKit
import RVCManager

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction private func buttonTapped(sender: UIButton) {
    guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
    
  RootViewControllerManager.shared.change(to: secondViewController, withAnimation: RootViewControllerManager.AnimationType(rawValue: sender.tag))
  }
  
}
