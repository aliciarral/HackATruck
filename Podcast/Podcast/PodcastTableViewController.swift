//
//  PodcastTableViewController.swift
//
//
//  Created by student on 08/04/19.
//
//
import UIKit //framework

class PodcastTableViewController: UITableViewController, UISearchResultsUpdating { //UITableViewController é uma classe (classe mãe de PodcastTableViewController), UISearchResultsUpdating é um protocolo
    
    var podcasts = [Podcast]() //inicializando podcasts como uma lista de objetos da classe Podcast
    let searchController = UISearchController(searchResultsController: nil)
    var filteredPodcasts = [Podcast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.podcasts = PodcastDAO.getPodcast()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Pesquisar Podcast"
        tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        if isFiltering(){
            return self.filteredPodcasts.count
        }
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        
        if let podcastCell = cell as? PodcastTableViewCell{
            
            let podcast: Podcast
            
            if isFiltering() {
                
                podcast = self.filteredPodcasts[indexPath.row]
            } else {
                podcast = self.podcasts[indexPath.row]
            }
            
            podcastCell.nomeLabel.text = podcast.nome
            
            podcastCell.contadorLabel.text = podcast.contadorDePodcastsReproduzidos
            
            podcastCell.fotoImage.image = UIImage(named: podcast.foto)
        }
        
        
        
        
        // Configure the cell
        
        return cell
    }
    
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
        podcasts.remove(at: indexPath.row)
        
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
    
    func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All"){
        filteredPodcasts = podcasts.filter({(podcasts: Podcast) -> Bool in
            return podcasts.nome.lowercased().contains(searchText.lowercased())
        
    })
    
    tableView.reloadData()
    
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText (searchController.searchBar.text!)
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
