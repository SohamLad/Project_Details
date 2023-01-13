//
//  DetailViewController.swift
//  Soham-Lad_COMP2125-Sec002_Lab04_Exercise01
//
//  Created by user213345 on 8/4/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var movieTitle : UILabel!
    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var movieLength : UILabel!
    @IBOutlet weak var movieYear : UILabel!
    @IBOutlet weak var movieDirector : UILabel!
    
    var movieDetail:String!  // holds the moive name
       var releaseYear:String!  // holds the launch year
       var movieImage:UIImage! // holds the moive image
       var directorName:String! //holds the director name
       var duration:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        movieTitle.text = movieDetail
        image.image = movieImage
        movieLength.text = duration
        movieYear.text =  releaseYear
        movieDirector.text = directorName
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
