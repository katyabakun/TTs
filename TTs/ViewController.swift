//
//  ViewController.swift
//  TTs
//
//  Created by Katerina Bakun on 26/04/16.
//  Copyright © 2016 Katerina Bakun. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var rate: Float!
    
    @IBOutlet weak var rateLabel: UILabel!
    var volume: Float!
    @IBOutlet weak var rateSlider: UISlider!
    var pitch:Float!
    var currentRate: Float!
    @IBOutlet weak var tekstField2: UITextView!

    @IBOutlet weak var tekstField1: UITextView!
  
@IBAction func rateChange(sender: UISlider) {
     currentRate = Float (sender.value)
    rateLabel.text = "\(currentRate)"
    rate = currentRate
    }

    @IBOutlet weak var tekstiSpeechKit: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    let synth2 = AVSpeechSynthesizer()
    var myUtterance2 = AVSpeechUtterance(string: "")
    var voiceToUse: AVSpeechSynthesisVoice?
  
  // let  SKSServerUrl = nmsps://NMDPTRIAL_katyabakun_gmail_com20160427080852@sslsandbox.nmdp.nuancemobility.net:443
    
    //SSL Host
    //sslsandbox.nmdp.nuancemobility.net
    
    //SSL Port
    //443
    
   // App Id
   // NMDPTRIAL_katyabakun_gmail_com20160427080852
    
/*    let SKSAppKey = appToken (0x8d, 0x1b, 0xe2, 0x33, 0xd1, 0x32, 0x06, 0x82, 0x3d, 0x94, 0x99, 0x43, 0x98, 0xc9, 0x08, 0xab, 0xc6, 0xf2, 0x6b, 0x8f, 0x01, 0xfe, 0xc4, 0xfc, 0xfd, 0x20, 0x42, 0xe7, 0x6f, 0x09, 0xe1, 0xfd, 0x24, 0xc3, 0x30, 0xf6, 0xf5, 0x36, 0x78, 0x32, 0xcb, 0x11, 0x75, 0x63, 0xda, 0x7d, 0x0e, 0xa1, 0x6f, 0x79, 0x30, 0x70, 0x78, 0xf5, 0x6c, 0x75, 0x15, 0xaf, 0x5c, 0x85, 0xb8, 0x3d, 0x82, 0xdc)
*/
    
    @IBAction func buttonTest(sender: AnyObject) {
        for voice in AVSpeechSynthesisVoice.speechVoices() {
            if #available(iOS 9.0, *) {
                if voice.name == "Milena" {
                    voiceToUse = voice
                }
            }
        }
        myUtterance2 = AVSpeechUtterance(string: tekstiSpeechKit.text )

        myUtterance2.voice = voiceToUse
        
        myUtterance2.rate = 0.3
        synth2.speakUtterance(myUtterance2)
        
        
     //   let session = SKSession(URL: NSURL(string: SKSServerUrl), appToken: SKSAppKey)
        
     //   let textToSpeak = "Hello World";
        
        // use this to specify a voice (language will be determined based on the voice)
       // let transaction = session.speakString(textToSpeak, withVoice: "Samantha", delegate: self)
        
        // or use this for the default voice for the language
        //let transaction = session.speakString(textToSpeak, withLanguage: "eng-USA", delegate: self)
    }
    @IBAction func buttonVoice(sender: AnyObject) {
        let tekst_in: String! = tekstField1.text
        var tekst_out = " ";
        for character in tekst_in.characters {
            if (character == "Ш" || character == "ш" ){
            tekst_out = tekst_out+"sh"
            }
            else if(character == "Л" || character == "л"){
            tekst_out = tekst_out+"l"
            }
            else if(character == "А" || character == "а"){
                tekst_out = tekst_out+"a"
            }
            else if(character == "С" || character == "с"){
                tekst_out = tekst_out+"s"
            }
            else if(character == "П" || character == "п"){
                tekst_out = tekst_out+"p"
            }
            else if(character == "О" || character == "о"){
                tekst_out = tekst_out+"o"
            }
            else if(character == "Е" || character == "е"){
                tekst_out = tekst_out+"e"
            }
            else if(character == "И" || character == "и"){
                tekst_out = tekst_out+"i"
            }
            else if(character == "У" || character == "у"){
                tekst_out = tekst_out+"u"
            }
            else if(character == "К" || character == "к"){
                tekst_out = tekst_out+"k"
            }
            else if(character == "Б" || character == "б"){
                tekst_out = tekst_out+"b"
            }
            else if(character == "В" || character == "в"){
                tekst_out = tekst_out+"v"
            }
            else if(character == "Г" || character == "г"){
                tekst_out = tekst_out+"g"
            }
            else if(character == "Д" || character == "д"){
                tekst_out = tekst_out+"d"
            }
            else if(character == "Ё" || character == "ё"){
                tekst_out = tekst_out+"yo"
            }
            else if(character == "Ж" || character == "ж"){
                tekst_out = tekst_out+"zh"
            }
            else if(character == "З" || character == "з"){
                tekst_out = tekst_out+"z"
            }
            else if(character == "Й" || character == "й"){
                tekst_out = tekst_out+"y"
            }
            else if(character == "М" || character == "м"){
                tekst_out = tekst_out+"m"
            }
            else if(character == "Н" || character == "н"){
                tekst_out = tekst_out+"n"
            }
            else if(character == "Р" || character == "Р"){
                tekst_out = tekst_out+"r"
            }
            else if(character == "Т" || character == "т"){
                tekst_out = tekst_out+"t"
            }
            else if(character == "Ф" || character == "ф"){
                tekst_out = tekst_out+"f"
            }
            else if(character == "Х" || character == "х"){
                tekst_out = tekst_out+"h"
            }

    

            else if(character == " "){
                tekst_out = tekst_out+" "
            }

}
       
        
        tekstField2.text = tekst_out
        for voice in AVSpeechSynthesisVoice.speechVoices() {
            if #available(iOS 9.0, *) {
                if voice.name == "Milena" {
                    voiceToUse = voice
                }
            }
        }
        myUtterance2 = AVSpeechUtterance(string: tekstField1.text )
        
        myUtterance2.voice = voiceToUse
        
       myUtterance2.rate = rate
        synth2.speakUtterance(myUtterance2)

           }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

