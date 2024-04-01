//
//  ViewController.swift
//  test
//
//  Created by kai.chang on 2024/3/28.
//

import UIKit
import MyToolLibrary

class ViewController: UIViewController {

    @IBOutlet weak var test_Label: UILabel!

    
    let my_tool = MyToolLibrary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
        
        //test_Label.text = "5+7= " + String(my_tool.getMathAddResult(5, y: 7)) + "/n" + "5-7= " + String(my_tool.getMathSubResult(5, y: 7));
        
    }


}

