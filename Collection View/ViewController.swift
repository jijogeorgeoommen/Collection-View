//
//  ViewController.swift
//  Collection View
//
//  Created by JIJO G OOMMEN on 31/05/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    var numb = ["1","2","3","4"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numb.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let con = cOllectionView.dequeueReusableCell(withReuseIdentifier: "cOllectionid", for: indexPath) as! cOllectionViewCell
        con.lAbel.text = numb[indexPath.row]
        return con
    }
    
    
    

    @IBOutlet weak var cOllectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

