//
//  HomePageViewController.swift
//  Restau_Univ
//
//  Created by Giovanni Zangue on 17/02/2023.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource   {

    @IBOutlet var table : UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "Image1"))
        models.append(Model(text: "Second", imageName: "Image2"))
        models.append(Model(text: "Third", imageName: "Image3"))
        models.append(Model(text: "Light", imageName: "Image4"))
        models.append(Model(text: "Mood", imageName: "Image5"))
        models.append(Model(text: "Moddy", imageName: "Image6"))
        models.append(Model(text: "Elegant", imageName: "Image7"))
        models.append(Model(text: "Smart", imageName: "Image8"))
        models.append(Model(text: "Tiny", imageName: "Image9"))
        models.append(Model(text: "Soft", imageName: "Image10"))
        models.append(Model(text: "Swift", imageName: "Image11"))
        models.append(Model(text: "Rock", imageName: "Image12"))

        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
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
