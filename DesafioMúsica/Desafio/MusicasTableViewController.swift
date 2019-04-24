//
//  DesafioMusicasTableViewController.swift
//  Desafio
//
//  Created by student on 10/04/19.
//  Copyright © 2019 Hta. All rights reserved.


//overide func é quando a gente chama uma função da classe mãe e subescreve ela com o corpo que a gente quiser

import UIKit

class MusicasTableViewController: UITableViewController{ //UITableViewController é uma classe (classe mãe de MusicaTableViewController), UISearchResultsUpdating é um protocolo
        
        var musicas = [Musica]() //inicializando musicas como uma lista de objetos da classe Podcast
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.musicas = MusicaDAO.getMusica()
            
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
            return musicas.count
        }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
                
            if let musicaCell = cell as? MusicasTableViewCell{
                    
                    let musica = self.musicas[indexPath.row]
                    
                    musicaCell.nomeLabel.text = musica.nome
                    
                    musicaCell.artistaLabel.text =  musica.artista
                }
                // Configure the cell...
                
                return cell
            }
    
            }

            
            
            
            // Configure the cell
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

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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


