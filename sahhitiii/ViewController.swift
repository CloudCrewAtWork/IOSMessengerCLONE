//
//  ViewController.swift
//  sahhitiii
//
//  Created by SAI ANURAG DODDI on 20/03/20.
//  Copyright © 2020 SAI ANURAG DODDI. All rights reserved.
//

import UIKit

var c: UIImage? = nil



let a = ["Priya","Sahas","Sahithi","Anurag","Charan","Hemanth","Kishore","Suraj","pavan"]
let b = [#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image7"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image5"),#imageLiteral(resourceName: "image8"),#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image9"),#imageLiteral(resourceName: "image10")]
class ViewController: UIViewController, UICollectionViewDataSource,  UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var MAdd: UIButton!
    @IBOutlet weak var SelfPic: UIImageView!
    @IBOutlet weak var Add: UIImageView!
    
    var imagePicker = UIImagePickerController()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bab = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell", for: indexPath) as! firstTableViewCell
        bab.im.image = b[indexPath.row]
        bab.Message.text = "Hello!"
        bab.Name.text = a[indexPath.row]
        bab.Time.text = "23:12"
        return bab
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return a.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as!  ImageCollectionViewCell
        cell.img.image = b[indexath.row]
        cell.SName.text = a[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    


    @IBOutlet weak var MScreen: UITableView!
    @IBOutlet weak var Stories: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        Stories.delegate = self
        Stories.dataSource = self
        MScreen.delegate = self
        MScreen.dataSource = self
        SelfPic.image = #imageLiteral(resourceName: "image1")
        if c == nil {
            MAdd.isEnabled = false
        }
//        self.view.backgroundColor = UIImage(patternImage: UIImage(named: "city.png"))
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "city")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)


        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
        let obj = storyboard?.instantiateViewController(withIdentifier: "FullStories") as? FullStories
        obj?.Person = a[indexPath.row]
        obj?.Pic = b[indexPath.row]; self.navigationController?.pushViewController(obj!, animated: true)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = storyboard?.instantiateViewController(withIdentifier: "PersonalChat_DM_") as? PersonalChat_DM_
        obj?.DMPic = b[indexPath.row]
        obj?.Dname = a[indexPath.row]
        obj?.DMMsg = "Hello"; self.navigationController?.pushViewController(obj!, animated: true)
    }

    @IBAction func PicPressed(_ sender: Any) {
        if c == nil {
            MAdd.isEnabled = false
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! MyStoryViewController
        secondController.s = c!
    }
    
    
    @IBAction func AddPressed(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
   
}
extension ViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let Simage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            c = Simage
            MAdd.isEnabled = true
        }
        dismiss(animated: true, completion: nil)
    }
}
