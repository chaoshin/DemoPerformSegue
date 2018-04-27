//
//  Page1ViewController.swift
//  DemoPerformSegue
//
//  Created by Chao Shin on 2018/4/27.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page1ViewController: UIViewController {

    
    @IBAction func buttonPress(_ sender: Any) {
        performSegue(withIdentifier: "ToPage2Segue", sender: sender) //指定segue到下一個畫面，並將物件的Tag傳遞給prepare()
    }
    
    /*  @IBAction func button1Press(_ sender: UIButton) {
        performSegue(withIdentifier: "ToPage2Segue", sender: "Button1")
    }
    
    @IBAction func button2Press(_ sender: UIButton) {
        performSegue(withIdentifier: "ToPage2Segue", sender: "Button2")
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? Page2ViewController // 指定要去的controller
        if let button = sender as? UIButton { // 轉型為UIButton
            if button.tag == 0 {    // 判斷Tag
                controller?.text = "Button1"    // 修改property
            }else {
                controller?.text = "Button2"    // 修改property
            }
        }
    }
}
