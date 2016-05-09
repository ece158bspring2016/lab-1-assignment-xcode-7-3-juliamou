//
//  PlayerDetailsViewController.swift
//  LABONE
//
//  Created by Julia on 5/7/16.
//  Copyright © 2016 UCSD. All rights reserved.
//

var player: Player?
import UIKit

class PlayerDetailsViewController: UITableViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UIView!
    


    override func viewDidLoad(){
    super.viewDidLoad()
    }
    override func tableView( tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
    if indexPath.section == 0 {
    nameTextField.becomeFirstResponder()
    }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender:AnyObject?){
    if segue.identifier == "SavePlayerDetail"{
    player = Player(name: nameTextField.text! , game: "Chess", rating: 1)
    }
    }
    
}


