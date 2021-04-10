import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var TableView1: UITableView!
    
    var dice = ["Vamos", "Estudar", "Oque?", "Hoje", "?", "..."]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView1.delegate =  self
        TableView1.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Você selecionou \(dice[indexPath.row]).")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dice.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView1.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = dice[indexPath.row]
        return cell
        
    }
}
