//
//  WindowController.swift
//  nyan_warrior
//
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet weak var switcher: NSButton!
    @IBOutlet weak var image_view: NSImageView!
    
        @objc func set_image(){
            let app_bundle = Bundle.main
            if (!image_view.animates) {
            let path = app_bundle.path(forResource: "nyan", ofType: "gif")!
                image_view.image = NSImage.init(byReferencingFile: path)
                image_view.animates = true

                switcher.title = "de-nyanifaction"
            } else {
                switcher.title = "nyanifaction"
                image_view.animates = false
                image_view.image = nil;
            }
        }

        override func windowDidLoad() {
            super.windowDidLoad()
            switcher.action = #selector(self.set_image)
        }
    
}
