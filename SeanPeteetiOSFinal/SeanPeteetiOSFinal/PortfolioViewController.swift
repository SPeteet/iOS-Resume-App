//
//  ProjectViewController.swift
//  SeanPeteetiOSFinal
//
//  Created by Sean Peteet on 5/9/23.
//

import UIKit

class PortfolioViewController: UIViewController {

    var currentI = 0
    let arrayI = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4")]
    @IBOutlet weak var ImageUsed: UIImageView!
    @IBOutlet weak var LeftOut: UIButton!
    @IBOutlet weak var RightOut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ImageUsed.image = arrayI[currentI]
        LeftOut.isEnabled = false

        }
        
    @IBAction func LeftAction(_ sender: Any) {
        currentI -= 1
        if currentI >= 0 {
            ImageUsed.image = arrayI[currentI]
        } else {
            LeftOut.isEnabled = false
        }
    }
    
    @IBAction func RightAction(_ sender: Any) {
        LeftOut.isEnabled = true
        currentI += 1
        if currentI < arrayI.count{
            ImageUsed.image = arrayI[currentI]
        } else {
            currentI = 0
            ImageUsed.image = arrayI[currentI]
            
        }

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
