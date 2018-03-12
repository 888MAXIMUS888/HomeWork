//
//  SpaceTableViewController.swift
//  Zaika Maxim HomeNavigation
//
//  Created by Максим Заїка on 11.03.2018.
//  Copyright © 2018 Максим Заїка. All rights reserved.
//

import UIKit

class SpaceTableViewController: UITableViewController {
    
    let images = ["https://hdwallsource.com/img/2014/8/outer-space-wallpaper-4358-4411-hd-wallpapers.jpg","https://cdn.pixabay.com/photo/2016/10/10/12/54/space-1728314_960_720.jpg","https://donanimgunlugu.com/wp-content/upload/2015/07/uzay.jpg","http://mysticinvestigations.com/paranormal/wp-content/uploads/2012/05/space.jpg"]
    var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "SpaceTableViewCell", bundle: nil), forCellReuseIdentifier: "SpaceTableViewCell")
        backButton = UIButton(type: .roundedRect)
        backButton.frame = CGRect(x:0.0, y:0.0, width: 100, height: 100)
        backButton.setTitle("BACK", for: .normal)
        backButton.setTitleColor(UIColor.red, for: .normal)
        backButton.addTarget(self, action: #selector(dismissView), for: .touchDown)
        self.view.addSubview(backButton)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @objc func dismissView(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpaceTableViewCell", for: indexPath) as! SpaceTableViewCell

        cell.setap(With: images[indexPath.row])
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.width
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
