//
//  OnboardingViewController.swift
//  on boarding inhouse
//
//  Created by MAC OS on 14/03/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextbtn: UIButton!
    
    
    var slides : [Onboardingslide ] = []
    var currentPage = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            Onboardingslide(title: " Become a better person", description: "Join a step by step guided emotional refinement journey sourced in Torah and Kabbalah", image: #imageLiteral(resourceName: "heart"), color: #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.6823529412, alpha: 1), label: "Skip ->"),
            Onboardingslide(title: "Never miss a day.", description: "Get smart notifications, a progress tracker and blessings toggle to keep you up to speed.", image: #imageLiteral(resourceName: "calendar"), color: #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.6823529412, alpha: 1), label: ""),
            Onboardingslide(title: "Amplify your growth.", description: "Tap into daily meditations, exercises, private journal, required blessings, short videos, progress tracker, multi-languages.", image: #imageLiteral(resourceName: "water-drop"), color: #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.6823529412, alpha: 1), label: ""),
            Onboardingslide(title: "Register your account", description: "Receive reminders and snippets of the daily omer exercises directly in your inbox.", image: nil , color: #colorLiteral(red: 0.2588235294, green: 0.7098039216, blue: 0.6823529412, alpha: 1), label: ""),
        ]

        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    

    @IBAction func nextbtnclick(_ sender: Any) {
      
        
        if currentPage == slides.count - 1 {
            print("thnx")
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
        
//        if currentPage > self.slides.count - 2 {
//            print("complete")
//
//               return
//           }
//
//           let indexPath = IndexPath(item: currentPage + 1, section: 0)
//           collectionView.scrollToItem(at: indexPath, at: .right, animated: true)
//        currentPage += 1
    }

}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: onboardingCollectionViewCell.identifier , for: indexPath) as! onboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        if(indexPath.row == 0) { //for first cell in the collection
            cell.backgroundColor = UIColor(named: "clo_1")
            
            } else if (indexPath.row == 1){
                cell.backgroundColor = UIColor(named: "clo_2")
            }else if (indexPath.row == 2){
                cell.backgroundColor = UIColor(named: "clo_3")
            }else {
                cell.backgroundColor = UIColor(named: "clo_2")
            }

        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
