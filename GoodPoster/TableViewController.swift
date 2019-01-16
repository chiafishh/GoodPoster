//
//  TableViewController.swift
//  GoodPoster
//
//  Created by User02 on 2019/1/16.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit
import Foundation

class TableViewController: UITableViewController {

    var sum:Int=0
    
    //顯示數量
    @IBOutlet var m11: UILabel!
    @IBOutlet var m12: UILabel!
    @IBOutlet var m21: UILabel!
    @IBOutlet var m22: UILabel!
    @IBOutlet var m31: UILabel!
    @IBOutlet var m32: UILabel!
    
    @IBOutlet var sumNT: UILabel!//總額
    
    //紀數量
    var count11:Int=0
    var count12:Int=0
    var count21:Int=0
    var count22:Int=0
    var count31:Int=0
    var count32:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    //價錢的顯示
    let formatter = NumberFormatter()
    
    func claculate(){
        sum = count11 * 100 + count12 * 50 + count21 * 45 + count22 * 40 + count31 * 35 + count32 * 30
        
        formatter.maximumFractionDigits = 0//小數點後顯示0位，因為都是整數不需要小數點
        
        //新台幣格式
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.numberStyle = .currencyISOCode
        
        let moneyString = formatter.string(from: NSNumber(value: sum))//把數字轉格式
        
        sumNT.text = moneyString
    }
    
    @IBAction func s11(_ sender: UIStepper) {
        count11 = Int(sender.value)
        m11.text = "\(count11)"
        claculate()
    }
    @IBAction func s12(_ sender: UIStepper) {
        count12 = Int(sender.value)
        m12.text = "\(count12)"
        claculate()
    }
    @IBAction func s21(_ sender: UIStepper) {
        count21 = Int(sender.value)
        m21.text = "\(count21)"
        claculate()
    }
    @IBAction func s22(_ sender: UIStepper) {
        count22 = Int(sender.value)
        m22.text = "\(count22)"
        claculate()
    }
    @IBAction func s31(_ sender: UIStepper) {
        count31 = Int(sender.value)
        m31.text = "\(count31)"
        claculate()
    }
    @IBAction func s32(_ sender: UIStepper) {
        count32 = Int(sender.value)
        m32.text = "\(count32)"
        claculate()
    }
    
    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
