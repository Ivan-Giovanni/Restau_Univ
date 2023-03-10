//
//  HomePageViewController.swift
//  Restau_Univ
//
//  Created by Giovanni Zangue on 17/02/2023.
//

import UIKit

class HomePageViewController: UITableViewController {

    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Attaching Images to the CollectionView
        
        models.append(Model(text: "Mood", imageName: "Image1"))
        models.append(Model(text: "Elegant", imageName: "Image2"))
        models.append(Model(text: "Third", imageName: "Image3"))
        models.append(Model(text: "Rock", imageName: "Image12"))

        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }

}

struct Model {
    
    let text : String
    let imageName : String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }

}
