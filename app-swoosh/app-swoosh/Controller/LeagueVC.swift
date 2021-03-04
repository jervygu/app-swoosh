//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Jeff Umandap on 3/4/21.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        nextBtn.isHidden = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        print(leagueType)
        
        nextBtn.isHidden = false
        nextBtn.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    

}
