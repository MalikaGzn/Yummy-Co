//
//  OnboardingViewController.swift
//  Yummy Co
//
//  Created by Malika 💕 on 12/11/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Deliciuos Dishes", description: "Experience a variety of amazing dishes from different cultures around the world", image: <#T##UIImage#>)
        ]

        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath)
        as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
}
