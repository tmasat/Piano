

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        var selectedTag: Int
        selectedTag = sender.tag
        var selectedTagString = String(selectedTag)
        var resultSoundName: String = "note" + selectedTagString
        
        let url = Bundle.main.url(forResource: resultSoundName, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        }
        catch let error as Error{
            print(error)
        }
    }
}

