import UIKit

class ViewController: UIViewController
{
    let helloWorldMsg = "Hello world! 🙋‍♀️"
    let welcomeMsg = "Welcome to my first app"
    
    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(helloWorldMsg)
    }
    
    @IBAction func showMessage(sender: UIButton)
    {
        var msg = "LOL"
        if sender == button1
        {
            msg = welcomeMsg
        }
        
        let alertController = UIAlertController(title: helloWorldMsg, message: msg, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:  nil))
        present(alertController, animated: true, completion:  nil)
    }
}
