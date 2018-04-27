//
//  Page2ViewController.swift
//  DemoPerformSegue
//
//  Created by Chao Shin on 2018/4/27.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    
    var text: String?
    @IBOutlet weak var showInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let text = text {
            showInfoLabel.text = text
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
