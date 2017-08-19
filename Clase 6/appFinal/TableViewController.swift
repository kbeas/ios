//
//  TableViewController.swift
//  AppScript
//
//  Created by Karlo Beas on 8/19/17.
//  Copyright © 2017 Karlo Beas. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    //var palabrastabla:[String] = ["Uno", "Dos", "Tres"]
    
    var managedObjects:[NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate!.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Lista")
        
        do {
            managedObjects = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("No pude recuperar los datos guardados. El error fue \(error), \(error.userInfo)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedObjects.count
        //return palabrastabla.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        let managedObject = managedObjects[indexPath.row]
        
        // Configure the cell...
        
        cell.textLabel?.text = managedObject.value(forKey: "palabras") as? String
        
        //return cell
        
        return cell
    }
    
    @IBAction func guardar(_ sender: Any) {
        let alerta = UIAlertController(title: "Nueva palabra", message: "Agregar nueva palabra", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: {
            
            (action:UIAlertAction) -> Void in
            
            let textField = alerta.textFields!.first
            self.guardarPalabra(palabra: textField!.text!)
            self.tableView.reloadData()
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .default)
        {(action: UIAlertAction) -> Void in}
        
        alerta.addTextField {(textField:UITextField ) -> Void in}
        
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    }
    
    func guardarPalabra(palabra:String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate!.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Lista", in: managedContext)!
        
        let managedObject = NSManagedObject(entity: entity, insertInto: managedContext)
        
        managedObject.setValue(palabra, forKeyPath: "palabras")
        
        do {
            try managedContext.save()
            managedObjects.append(managedObject)
        } catch let error as NSError {
            print("No se pudo guardar, error: \(error), \(error.userInfo)")
        }
    }
}
