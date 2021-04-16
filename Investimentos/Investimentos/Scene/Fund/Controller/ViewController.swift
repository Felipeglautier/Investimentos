import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var fund: [Fund]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate =  self
        tableView.dataSource = self
        getFund()
        
    }
    
    
    func getFund() {
        loadingIndicator()
        FundAPI.shared.getFund { fund in
            self.dismissAlert()
            
            if fund == nil {
                print("Falhou")
                return
                }
            
            self.fund = fund
            self.tableView.reloadData()
       }
        
    }
    
    func loadingIndicator() {
        let alert = UIAlertController(title: nil, message: "Carregando...", preferredStyle: .alert)

        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = .large
        loadingIndicator.startAnimating()

        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
    }
    
    func dismissAlert() {
        if let vc = self.presentedViewController, vc is UIAlertController {
            dismiss(animated: false, completion: nil)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let fund = self.fund else { return UITableViewCell() }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FundTableViewCell", for: indexPath) as! FundTableViewCell
         
        cell.setup(fund: fund[indexPath.row])
        return cell
    }
}
