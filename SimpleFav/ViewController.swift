//
//  ViewController.swift
//  SimpleFav
//
//  Created by Chris Le on 3/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //var videoArray = [NSDictionary]()
    
    //let myRefreshControl = UIRefreshControl()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.dataSource = self
        //tableView.delegate = self
        
        //myRefreshControl.addTarget(Self, action: #selector(), for: T##UIControl.Event)
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath) as! PlaylistCellTableViewCell
        
        cell.usernameLabel.text = "Some name"
        cell.videoTitleLabel.text = "Some title"
        cell.videoDescriptionLabel.text = "Some description"
        
        //cell.textLabel?.text = "row: \(indexPath.row)"
        
        return cell
    }

}
