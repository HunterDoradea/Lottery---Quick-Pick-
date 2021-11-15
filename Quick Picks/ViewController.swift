//
//  ViewController.swift
//  Quick Picks
//
//  Created by Hunter Doradea on 8/11/21.
//


import UIKit

class ViewController: UIViewController {
    
    // create the ib outlets for the lotter numbers(5)
    @IBOutlet weak var mega1: UILabel!
    @IBOutlet weak var mega2: UILabel!
    @IBOutlet weak var mega3: UILabel!
    @IBOutlet weak var mega4: UILabel!
    @IBOutlet weak var mega5: UILabel!
    
    //create the ib outlet for the powerball number(1)
    @IBOutlet weak var megaBall: UILabel!
    
    // create the ib outlet for the quote
    @IBOutlet weak var luckyQuote: UILabel!
    
    //create an array of quotes
    let Quotes = [
        "Something tells me these are the ones...",
        "These numbers are made especially for you.",
        "The future you dream of is in these numbers.",
        "Fortune is smiling upon you with these numbers.",
        "I sense a great fortune in your future.",
        "This is the sign youv've been looking for.",
        "If you don't play these numbers then I will.",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // create the ib action for the button :
    @IBAction func buttonPressed(_ sender: UIButton) {
        //this will run when the button is pressed

        //set that number to be the text property of the mega numbers
        mega1.text = createRandomNumber(type: "regular")
        mega2.text = createRandomNumber(type: "regular")
        mega3.text = createRandomNumber(type: "regular")
        mega4.text = createRandomNumber(type: "regular")
        mega5.text = createRandomNumber(type: "regular")
        
        //look up how to work with iboutlets in a loop, or work with them all at once.!!!!!!!!!!!!!!!!!!!!!!!
        
        // set the megaball number
        megaBall.text = createRandomNumber(type: "megaball")
        
        // set the quote:
        let randomQuote = Quotes.randomElement()
        luckyQuote.text = randomQuote
        
        
    }
    
    //function that generates a random number:
    func createRandomNumber(type: String) -> String {
        
        var randomNumber: Int = 0
        
        if type == "regular" {
            randomNumber = Int.random(in: 1...69)
        } else if type == "megaball" {
            randomNumber = Int.random(in: 1...40)
        }
        
        return "\(randomNumber)"
        
    }
    

}

