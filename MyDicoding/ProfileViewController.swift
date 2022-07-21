//
//  ViewController.swift
//  MyDicoding
//
//  Created by Ridha Ahmad Firdaus on 20/07/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var followedButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var academyLabel: UILabel!
    @IBOutlet weak var challengeLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        changeName()
        changeJob()
        changeAcademy()
        changeChallenge()
        changeEvent()
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: UIButton) {
        isFollow = !isFollow
          followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1 // Menentukan lebar dari border/garis batas.
        profileImageView.layer.masksToBounds = false // Menentukan apakah perlu melakukan masking atau tidak.
        profileImageView.layer.borderColor = UIColor.black.cgColor // Menentukan warna border.
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
        profileImageView.image = UIImage(named: "RidhaAF")
    }
    
    private func changeName() {
        nameLabel.text = "Ridha Ahmad Firdaus"
    }
    
    private func changeJob() {
        jobLabel.text = "Programmer handal!"
    }
    
    private func changeAcademy() {
        academyLabel.text = "Belajar 7 Kelas Akademi"
    }
    
    private func changeChallenge() {
        challengeLabel.text = "Memenangkan 0 Challenge"
    }
    
    private func changeEvent() {
        eventLabel.text = "Menghadiri 7 Event"
    }

}

