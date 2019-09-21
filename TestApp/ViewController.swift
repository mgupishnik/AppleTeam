import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    let helloWorldMsg = "Hello world! 🙋‍♀️"
    let welcomeMsg = "Welcome to my first app"
    
    override func viewDidLoad()
    {
        button1.backgroundColor = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 1)
        button1.tintColor = UIColor(displayP3Red: 0, green: 1, blue: 1, alpha: 1)
        button2.backgroundColor = UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 1)
        button1.tintColor = UIColor(displayP3Red: 1, green: 0, blue: 1, alpha: 1)
        button3.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1)
        button1.tintColor = UIColor(displayP3Red: 1, green: 1, blue: 0, alpha: 1)
        
        super.viewDidLoad()
        print(helloWorldMsg)
    }
    
    @IBAction func showMessage(sender: UIButton)
    {
        let alertController = UIAlertController(title: (sender == button1 ? helloWorldMsg : "Swift is awesome"), message: welcomeMsg, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:  nil))
        present(alertController, animated: true, completion:  nil)
    }
}
