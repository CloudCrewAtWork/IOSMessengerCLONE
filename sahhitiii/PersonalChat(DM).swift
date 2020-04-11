//
//  PersonalChat(DM).swift
//  sahhitiii
//
//  Created by SAI ANURAG DODDI on 21/03/20.
//  Copyright © 2020 SAI ANURAG DODDI. All rights reserved.
//

import UIKit

class PersonalChat_DM_: UIViewController {

    @IBOutlet weak var ApunKaMessage: UILabel!
    @IBOutlet weak var UnkaMessage: UILabel!
    @IBOutlet weak var DMName: UILabel!
    @IBOutlet weak var DMImage: UIImageView!
    @IBOutlet weak var TextField: UITextField!
    var Dname = ""
    var DMMsg = ""
    var DMPic = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        DMName.text = Dname
        DMImage.image = DMPic
        UnkaMessage.text = DMMsg

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Pressed(_ sender: Any) {
        ApunKaMessage.text = TextField.text
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
