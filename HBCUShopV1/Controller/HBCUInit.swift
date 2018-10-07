//
//  Created by Rick Mc on 9/13/18.
//  Copyright © 2018 Rick Mc. All rights reserved.
//

import UIKit
import CoreData

class HBCUListViewController : UITableViewController {
    
    var tableText = Array(repeating: "", count: 20)

    static var titlesLoaded : [String] = []
    static var urlsLoaded : [String] = []
    static var connectionOn : Bool = true
    
    var currentRow : Int = 0
    let textCellIndentifier = "itemCell"
    
    static var fEntries: [NSManagedObject] = []

    @IBOutlet var EMotoTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("view did load")
        
//        NotificationCenter.default.addObserver(self, selector: #selector(fetchEntries), name: NSNotification.Name.UIApplicationDidBecomeActive, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(fetchEntries), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
        debugPrint("Entries 2 :", HBCUListViewController.fEntries)
  //      loadEntries()
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentRow = indexPath.row
        HBCUListViewController.connectionOn = true
        
        debugPrint("Text when selected.")
        debugPrint(currentRow)
        debugPrint(HBCUListViewController.fEntries)
        performSegue(withIdentifier: "tabBar", sender: self)

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height:CGFloat = CGFloat()
        height = 135
        return height
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabVc = segue.destination as! UITabBarController
        let navVc = tabVc.viewControllers!.first as! UINavigationController
        let tabviewVc = navVc.viewControllers.first as! TableViewController
        tabviewVc.searchText = "Product area" // Will be text search string going to Etsy

    }
    
//    @objc func fetchEntries(){
//        
//        if CoreDataStack.sharedManager.fetchAllEntries() != nil{
//            
//            HBCUListViewController.fEntries = CoreDataStack.sharedManager.fetchAllEntries()!
//        }
//        debugPrint("Entries 2 :", HBCUListViewController.fEntries)
//        }
    
    func loadEntries(){
        let entrycount = HBCUListViewController.fEntries.count
        if entrycount != 0 {
            HBCUListViewController.titlesLoaded = []
            HBCUListViewController.urlsLoaded = []
            for count in 0 ... entrycount-1 {
                
                    HBCUListViewController.urlsLoaded.append(HBCUListViewController.fEntries[count].value(forKeyPath: "url") as! String)
                    HBCUListViewController.titlesLoaded.append(HBCUListViewController.fEntries[count].value(forKeyPath: "title") as! String)
            }
            TableViewController.feedListAdded = HBCUListViewController.titlesLoaded
            TableViewController.urlListAdded = HBCUListViewController.urlsLoaded
        }
        
    }
    
}

