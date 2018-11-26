//
//  PictureBookTableViewController.swift
//  2018StoryBookClass
//
//  Created by Chang Sophia on 11/24/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class PictureBookTableViewController: UITableViewController {

   var books = [Information]()
    
    @IBOutlet var bookLabels: [UILabel]!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBooks()
    }
 
    func initBooks() {
        books.append(Information(name: "【Papa Please Get The Moon For Me】", explainText: explainKeys.papa, imageName:"papaCover" ))
        books.append(Information(name: "【We Are Going On A Bear Hunt】", explainText: explainKeys.bear, imageName:"bearCover" ))
        books.append(Information(name: "【What's The Time, Mr. Wolf?】", explainText: explainKeys.wolf, imageName:"wolfCover" ))
         books.append(Information(name: "【Go Away, Big Green Monster】", explainText: explainKeys.monster, imageName:"monsterCover" ))
        books.append(Information(name: "【Eat Your Peas】", explainText: explainKeys.pea, imageName:"peaCover" ))
        books.append(Information(name: "【Handa's Surprise】", explainText: explainKeys.handa, imageName:"handaCover" ))
        books.append(Information(name: "【Guess How Much I Love Youe】", explainText: explainKeys.guess, imageName:"guessCover" ))
        books.append(Information(name: "【Bark, George】", explainText: explainKeys.bark, imageName:"barkCover" ))
        books.append(Information(name: "【We All Go Traveling By】", explainText: explainKeys.travel, imageName:"travelCover" ))
        books.append(Information(name: "【Silly Sally】", explainText: explainKeys.silly, imageName:"sillyCover" ))
        books.append(Information(name: "【Santa's Beard】", explainText: explainKeys.santa, imageName:"santaCover" ))
        books.append(Information(name: "【Beekle】", explainText: explainKeys.beekle, imageName:"beekleCover" ))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
 

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
 
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? ViewController
        
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.bookName = books[row].name
            controller?.explainText = books[row].explainText
            controller?.imageName = books[row].imageName
        }
    }
}

