//
//  GameScene.swift
//  Monster
//
//  Created by Christian Bleske on 19.09.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"monster")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            //let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            //sprite.runAction(SKAction.repeatActionForever(action))
            
            let moveUp = SKAction.moveByX(0, y: 200, duration: 0.5)
            let moveDown = SKAction.moveByX(0, y: -400, duration: 0.5)
            let moveUp2 = SKAction.moveByX(0, y: 200, duration: 0.5)
            let zoom = SKAction.scaleTo(2.0, duration: 0.25)

            let seq = SKAction.sequence([moveUp,moveDown,moveUp2,zoom])
            sprite.runAction(seq)
            self.addChild(sprite)
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
