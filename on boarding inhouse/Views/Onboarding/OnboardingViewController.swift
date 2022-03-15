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
    @IBOutlet weak var pageController: UIPageControl!
    
    var slides : [Onboardingslide ] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
        Onboardingslide(title: " Become a better person", description: "Join a step by step guided emotional refinement journey sourced in Torah and Kabbalah", image: #imageLiteral(resourceName: "heart")),
        Onboardingslide(title: "Never miss a day.", description: "Get smart notifications, a progress tracker and blessings toggle to keep you up to speed.", image: #imageLiteral(resourceName: "calendar")),
        Onboardingslide(title: "Amplify your growth.", description: "Tap into daily meditations, exercises, private journal, required blessings, short videos, progress tracker, multi-languages.", image: #imageLiteral(resourceName: "water-drop")),
    //    Onboardingslide(title: "Register your account", description: "Receive reminders and snippets of the daily omer exercises directly in your inbox.", image: nil)
        ]

        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    

    @IBAction func nextbtnclick(_ sender: Any) {
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: onboardingCollectionViewCell.identifier , for: indexPath) as! onboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
        
    }
}
