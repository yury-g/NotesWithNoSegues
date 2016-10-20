//
//  DetailViewController.swift
//  NotesWithNoSegues
//
//  Created by yodyodsmall on 10/20/16.
//  Copyright © 2016 yuryg. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate {

  
    @IBOutlet weak var detailDescriptionLabel: UITextView!


    func configureView() {
        // Update the user interface for the detail item.
      
        if let label = self.detailDescriptionLabel {
                label.text = objects[currentIndex]
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        print(objects)
    }
    
///   UITextViewDelegate
    func textViewDidChange(_ textView: UITextView) {
        objects[currentIndex] = detailDescriptionLabel.text
    }
    
    
}

