//
//  FirstViewController.swift
//  turtle-animation
//
//  Created by Taya Penskaya on 27/11/2018.
//  Copyright © 2018 Taya Penskaya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyTableViewCell
        cell.myImage.image = UIImage(named: "turtle.jpg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyTableViewCell
        cell.animateTurtle()
        cell.delegate = self
    }
    
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension FirstViewController: CellDelegate {
    func constraintDidChange() {
        UIView.animate(withDuration: 5) {
            self.myTableView.beginUpdates()
            self.myTableView.endUpdates()
        }
    }
}

protocol CellDelegate {
    func constraintDidChange()
}
