//
//  PruebaController.swift
//  Prueba
//
//  Created by William Ravelo on 1/04/17.
//  Copyright © 2017 WilliamRavelo. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
}

class PruebaController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrayCellData = [cellData]()
    
    @IBOutlet var boton: UIButton!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayCellData = [cellData(cell: 1, text: "uno sdaf asf asdf sadf asdf adsf asdf dsaf asd fasd fdasfasd fsa df asdf sadf sadf sdaf asf sad fdsa fsad fsa fas df sadf saf adsf asdbdfan fdn gj uyj ytdsa frem utngbdfv sfyjnb gsdfas", image:#imageLiteral(resourceName: "second")),
                         cellData(cell: 2, text: "tres", image: #imageLiteral(resourceName: "second")),
                         cellData(cell: 3, text: "cuatro", image: #imageLiteral(resourceName: "second"))]
        
        tableView.estimatedRowHeight = 216
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("PruebaCellTableViewCell", owner: self, options: nil)?.first as! PruebaCellTableViewCell
        cell.IMAGEN.image = arrayCellData[indexPath.row].image
        cell.LABEL.text = arrayCellData[indexPath.row].text
        return cell
    }
    
    var i = 4
    @IBAction func reload(_ sender: Any) {
        arrayCellData += [cellData(cell: i, text: "\(i)", image:#imageLiteral(resourceName: "second"))]
        let x:IndexPath = IndexPath(row:(self.arrayCellData.count - 1), section:0)
        self.tableView.insertRows(at: [x], with: UITableViewRowAnimation.left)
        self.tableView.scrollToRow(at: x, at: .bottom, animated: true)
        i+=1
    }
    
    
}
