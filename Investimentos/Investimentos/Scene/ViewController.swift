import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var TableView1: UITableView!
    
    var dice = ["Meta Plus Fim", "Sparta Debêntures Incentivadas FIRF CP", "CA Indosuez? Infraestrutura Incentivado FIC FI...", "Vinci Multiestratégia Fim", "Quatá Select Light ", "..."]

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
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView1.dequeueReusableCell(withIdentifier: "FundTableViewCell", for: indexPath) as! FundTableViewCell 
         
        cell.setup(name: dice[indexPath.row])
        return cell
        
        
    }
}
