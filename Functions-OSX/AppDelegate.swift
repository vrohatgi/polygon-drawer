//
//  AppDelegate.swift
//  Functions-OSX
//
//  Created by Dion Larson on 7/17/16.
//  Copyright (c) 2016 Make School. All rights reserved.
//


import Cocoa
import SpriteKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var skView: SKView!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        /* Pick a size for the scene */
        if let scene = DrawingScene(fileNamed:"DrawingScene") {
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .aspectFill
            
            self.skView!.presentScene(scene)
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            self.skView!.ignoresSiblingOrder = true
            self.skView!.wantsLayer = true
            
            runDrawing()
//            self.skView!.showsFPS = true
//            self.skView!.showsNodeCount = true
        }
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
