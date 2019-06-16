//
//  ViewController.swift
//  MemoryTest
//
//  Created by dave76 on 16/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  struct SizeValue {
    var width = 1.0
    var height = 1.0
  }
  
  class SizeReference {
    var width = 1.0
    var height = 1.0
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var value = SizeValue()
    value.width = 2.0
    value.height = 3.0
    
    var value2 = value
    value2.width = 5.0
    value2.height = 7.0
    
    var sizeRef = SizeReference()
    sizeRef.width = 2.0
    sizeRef.height = 3.0
    
    var sizeRef2 = sizeRef
    sizeRef2.width = 3.0
    sizeRef2.height = 4.0
    
  }


}

