//
//  ViewController.swift
//  Soham-Lad_COMP2125-Sec002_Lab04_Exercise01
//
//  Created by user213345 on 7/29/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var movieTable: UITableView!
    
    let movieNames = ["Galaxy Quest", "Iron Man", "Klaus", "The Fifth"]
    let movieYears = ["1999","2008","2019","1997"]
    let movieImages = ["GalaxyQuest", "IronMan", "Klaus", "TheFifth"]
    let movieDirector = ["Dean Parisot", "Jon Favreau", "Sergio Pablos", "Luc Besson"]
    let movieMiniutes = ["102 Min", "126 Min", "97 Min", "113 Min"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTable.dataSource = self
        movieTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {

            let tempCell:tabelTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tabelTableViewCell
            tempCell.movieName.text = movieNames[indexPath.row]
            tempCell.movieYear.text = movieYears[indexPath.row]
            tempCell.movieImage.image = UIImage(named: movieImages[indexPath.row] + ".jpg" )
            
            return tempCell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let movieVC:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            
            // declaring the value to DetailViewController
            movieVC.movieDetail = movieNames[indexPath.row]
            movieVC.releaseYear = movieYears[indexPath.row]
            movieVC.movieImage = UIImage(named: movieImages[indexPath.row] + ".jpg" )!
            movieVC.directorName = movieDirector[indexPath.row]
            movieVC.duration = movieMiniutes[indexPath.row]
                
            // make it navigate to movieViewController
            self.navigationController?.pushViewController(movieVC, animated: true)
        }
    
}


