//
//  ViewController.swift
//  rainbowWishRoad
//
//  Created by user on 1/15/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colorsArray = ["red", "orange", "yellow", "green", "blue", "purple"]
    
    @IBOutlet var colorfulTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorfulTableView.delegate = self
        colorfulTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Delegate and Datasource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = colorfulTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
//        let backgroundCommand = "cell.backgroundColor = UIColor.\(colorsArray[indexPath.row])"
        //backgroundCommand
//
//        cell.backgroundColor = UIColor."(\(colorsArray[indexPath.row])"
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = UIColor.red
        case 1:
            cell.backgroundColor = UIColor.orange
        case 2:
            cell.backgroundColor = UIColor.yellow
        case 3:
            cell.backgroundColor = UIColor.green
        case 4:
            cell.backgroundColor = UIColor.blue
        case 5:
            cell.backgroundColor = UIColor.purple
        default:
            cell.backgroundColor = UIColor.clear
        }
        
        colorfulTableView.rowHeight = 120
        
        return cell
    }
}

