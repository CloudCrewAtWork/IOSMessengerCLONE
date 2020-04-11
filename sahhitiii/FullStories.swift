//
//  FullStories.swift
//  sahhitiii
//
//  Created by SAI ANURAG DODDI on 21/03/20.
//  Copyright © 2020 SAI ANURAG DODDI. All rights reserved.
//

import UIKit

class FullStories: UIViewController {
    @IBOutlet weak var PName: UILabel!
    @IBOutlet weak var Stry: UIImageView!
    var Person = ""
    var Pic = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        PName.text = Person
        Stry.image = Pic

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
