//
//  JournalViewController.swift
//  forget-me-not
//
//  Created by Sarah Shahinpour on 11/25/19.
//  Copyright © 2019 Appollo. All rights reserved.
//

import UIKit

class JournalViewController: UITableViewController, AddJournalEntryViewControllerDelegate {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.title = "Journal"
//        navigationItem.title = "Journal"
//        view.backgroundColor = .fmnPurple
//        print("Loaded journal view controller.")
//    }

    let CellIdentifier = "Cell Identifier"
    var journalEntries = [JournalEntry]()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in JournalViewController")
    }

    func controller(controller: AddJournalEntryViewController, didSaveJournalEntryWithDate date: String, andEntry entry: String) {

        let journalEntry = JournalEntry(date: date, entry: entry)
        journalEntries.append(journalEntry)

        tableView.insertRows(at: [(NSIndexPath(row: (journalEntries.count - 1), section: 0) as IndexPath)], with: UITableView.RowAnimation.none)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddJournalEntryViewController" {
            if let navigationController = segue.destination as? UINavigationController, let addJournalEntryViewController = navigationController.viewControllers.first as? AddJournalEntryViewController {
                addJournalEntryViewController.delegate = self
            }
        }
        if let destination = segue.destination as? DisplayJournalEntryViewController {
            destination.journalEntry = journalEntries[(tableView.indexPathForSelectedRow?.row)!]
        }
    }



    //MARK: Helper Methods
    //https://stackoverflow.com/questions/53347426/ios-editor-bug-archiveddata-renamed
    private func loadJournalEntries(){
        let fullPath = getDocumentsDirectory().appendingPathComponent("journalEntries.plist")
//        if let filePath = pathForJournalEntries(), FileManager.default.fileExists(atPath: filePath) {
//            if let archivedJournalEntries = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [JournalEntry] {
//                journalEntries = archivedJournalEntries
//            }
//        }
        if let nsData = NSData(contentsOf: fullPath) {
            do {
                let data = Data(referencing:nsData)

                if let loadedJournalEntries = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? Array<JournalEntry> {
                    journalEntries = loadedJournalEntries
                }
            } catch {
                print("Couldn't read file.")
            }
        }
    }


//    private func pathForJournalEntries() -> String? {
//        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
//        if let documents = paths.first, let documentsURL = NSURL(string: documents) {
//            return documentsURL.appendingPathComponent("journalEntries.plist")?.path
//        }
//        return nil
//    }

    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

    private func saveItems() {
        let fullPath = getDocumentsDirectory().appendingPathComponent("journalEntries.plist")
        do {
            let filePath = try NSKeyedArchiver.archivedData(withRootObject: journalEntries, requiringSecureCoding: true)
            try filePath.write(to:fullPath)
        } catch {
            print(error)
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Journal Entries"

        // Register Class
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CellIdentifier)

        // Create Add Button
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addJournalEntry(sender:)))
    }

    @objc func addJournalEntry(sender: UIBarButtonItem) {
        //print("Button was tapped. (;")
        performSegue(withIdentifier: "AddJournalEntryViewController", sender: self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journalEntries.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let entry = tableView.dequeueReusableCell(withIdentifier: CellIdentifier, for: indexPath)
        let journalEntry = journalEntries[indexPath.row]
        entry.textLabel?.text = journalEntry.date

        return entry
    }

    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath){
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showJournalEntry", sender: self)
    }
}

