//
//  MyStoryViewController.swift
//  sahhitiii
//
//  Created by SAI ANURAG DODDI on 22/03/20.
//  Copyright © 2020 SAI ANURAG DODDI. All rights reserved.
//

import UIKit

class MyStoryViewController: UIViewController {

    @IBOutlet weak var MyStry: UIImageView!
    var s = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        MyStry.image =  s
                            
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
