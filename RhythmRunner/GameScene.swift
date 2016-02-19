//
//  GameScene.swift
//  Sample
//
//  Created by Johnny Le on 2/16/16.
//  Copyright (c) 2016 Johnny Le. All rights reserved.
//


/*
TODO:
-Add sprite/ movement
-Add monsters and collision detection
-Add touch prompts
-Add BG Music
-Add start screen
-Add life bars
-Add HUD
-Add score meter
-Add options screen?
*/
import SpriteKit

class GameScene: SKScene {
    
    let background = SKSpriteNode(imageNamed: "bg")
    let background2 = SKSpriteNode(imageNamed: "bg")
    
    /*
    Purpose: Initialize game scene
    */
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = SKColor.blackColor()
        
        addBG()
    }
    
    /*
    Purpose: Create and instantiate background images
    TODO: Add more scene images. (Sun, clouds, moon, etc.)
    */
    func addBG() {
        background.anchorPoint = CGPointZero
        background.position = CGPointZero
        background.zPosition = 2
        
        background2.anchorPoint = CGPointZero
        background2.position = CGPointZero
        background2.zPosition = 2
        
        background.position = CGPoint(x: 0, y: 0)
        background.size = self.frame.size
        
        background2.position = CGPoint(x: size.width, y: 0)
        background2.size = self.frame.size
        
        addChild(background)
        addChild(background2)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        //Needs to be removed
        for touch in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
        }
    }
    
    
    /*
    Purpose: Game loop for updating the scene
    */
    override func update(currentTime: NSTimeInterval) {
        /* Called before each frame is rendered */
        
        
        //Infinite Scrolling Background
        //Values for speed can be changed, look at creating a function that increases the speed of the scrolling
        background.position = CGPoint(x: background.position.x - 30, y: background.position.y)
        background2.position = CGPoint(x: background2.position.x - 30, y: background2.position.y)
        
        if (background.position.x < -background.size.width) {
            background.position = CGPointMake(background2.position.x + background2.size.width, background.position.y)
        }
        
        if (background2.position.x < -background2.size.width) {
            background2.position = CGPointMake(background.position.x + background.size.width, background2.position.y)
        }
        
    }
}
