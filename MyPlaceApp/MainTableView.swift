//
//  MainTableView.swift
//  MyPlaceApp
//
//  Created by Вадим Гамзаев on 14/06/2019.
//  Copyright © 2019 Вадим Гамзаев. All rights reserved.
//

import UIKit

class MainTableView: UITableViewController {
    

    
    var places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return places.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        let place = places[indexPath.row]

        cell.nameLabel?.text = place.name
        cell.locationLabel?.text = place.location
        cell.typeLabel?.text = place.type
        
        if place.image == nil {
            cell.imageOfPlace.image = UIImage(named: place.restaruantImage!)
        } else {
            cell.imageOfPlace.image = place.image
        }
        
//        cell.imageOfPlace?.image = UIImage(named: places[indexPath.row].restaruantImage!)
        
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2 //делаем картинки круглыми
        
        cell.imageOfPlace?.clipsToBounds = true

        return cell
    }
    


 
  

    /*
    // MARK: - Navigationи
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindSegue (_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }

}
