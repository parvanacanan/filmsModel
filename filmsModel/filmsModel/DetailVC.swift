//
//  DetailVC.swift
//  filmsModel
//
//  Created by parvana on 23.06.25.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imdbLAbel: UILabel!
    
    var selectedFilm : Films?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedFilm?.name
        imdbLAbel.text = selectedFilm?.imdb
        imageView.image = selectedFilm?.image
      }
    
 

}
