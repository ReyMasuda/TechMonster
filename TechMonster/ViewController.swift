//
//  ViewController.swift
//  TechMonster
//
//  Created by ReyMasuda on 2015/04/03.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: NSTimer!
    var enemyTimer: NSTimer!
    
    var enemy: Enemy!
    var player: Player!
    
    let util: TechDraUtility = TechDraUtility()
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var attackButton: UIButton!
    
    @IBOutlet var enemyImageView: UIImageView!
    @IBOutlet var playerImageView : UIImageView!
    
    @IBOutlet var enemyHPBar: UIProgressView!
    @IBOutlet var playerHPBar: UIProgressView!
    
    @IBOutlet var enemyNameLabel: UILabel!
    @IBOutlet var playerNameLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enemyHPBar.transform = CGAffineTransformMakeScale(1.0, 4.0)
        playerHPBar.transform = CGAffineTransformMakeScale(1.0, 4.0)
        initStatus()
        
        enemyTimer = NSTimer.scheduledTimerWithTimeInterval(enemy.speed), target: self, selector: "enemyAttack", userInfo: nil, repeats: true)
        enemyTimer .fire()
    }
    
    func initStatus() {
        enemy = Enemy()
        player = Player()
        
        enemyNameLabel.text = enemy.name
        playerNameLabel.text = player.name
        
        enemyImageView.image = enemy.image
        playerImageView.image = player.image
        
        enemyHPBar.progress = enemy.currentHP / enemy.maxHP
        playerHPBar.progress = player.currentHP / player.maxHP
        
        cureHP()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

