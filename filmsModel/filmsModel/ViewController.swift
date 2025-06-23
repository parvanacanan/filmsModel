//
//  ViewController.swift
//  filmsModel
//
//  Created by parvana on 23.06.25.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate  {
     
    
    var myFilms = [Films]()
    var chosenFilm :  Films?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        super.viewDidLoad()
        
        let tasteofcherry = Films(nameInit: "Taste of Cherry ", imdbInit: "IMDB: 7.7 ", imageInit: UIImage(named: "toc")! )
        let  greenmile = Films(nameInit: "Green Mile", imdbInit: "IMDB : 8.6 ", imageInit:  UIImage(named: "gm")!)
        let incendies = Films(nameInit: "Incendies", imdbInit: "IMDB : 8.3 ", imageInit: UIImage(named: "incendies")!)
        let thegod = Films(nameInit: "The GodFather", imdbInit: "IMDB : 9.2", imageInit: UIImage(named: "thegodfather")!)
        let theshining = Films(nameInit:  "The Shining ", imdbInit: "IMDB : 8.4", imageInit: UIImage(named: "theshining")!)
        
        myFilms.append(tasteofcherry)
        myFilms.append(thegod)
        myFilms.append(incendies)
        myFilms.append(greenmile)
        myFilms.append(theshining)

     }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFilms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myFilms[indexPath.row].name
        return cell
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFilm = myFilms[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
       let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedFilm = chosenFilm! 
        }
    }

}

