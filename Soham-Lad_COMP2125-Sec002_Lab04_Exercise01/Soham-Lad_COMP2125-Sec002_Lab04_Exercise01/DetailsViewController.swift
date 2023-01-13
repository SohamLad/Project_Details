//
//  DetailsViewController.swift
//  Soham-Lad_COMP2125-Sec002_Lab04_Exercise01
//
//  Created by user213345 on 7/29/22.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController{
    
    @IBOutlet weak var movieTitle : UILabel!
    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var movieLength : UILabel!
    @IBOutlet weak var movieYear : UILabel!
    @IBOutlet weak var movieDirector : UILabel!
    
    var movieDetail:String!  // holds the moive name
       var releaseYear:String!  // holds the release year
       var movieImage:UIImage! // holds the moive image
       var directorName:String! //holds the director name
       var duration:String!   //holds the movie duration
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
            
            //shows values the label value when launched
            movieTitle.text = movieDetail
            image.image = movieImage
            movieLength.text = duration
            movieYear.text =  releaseYear
            movieDirector.text = directorName
        }
    
    

}
