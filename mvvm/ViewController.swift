//
//  ViewController.swift
//  mvvm
//
//  Created by Saurabh Gupta on 04/04/19.
//  Copyright © 2019 Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate let viewModel = ProfileViewModel()
    
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        configureTableView()
    }

    fileprivate func configureTableView() {
        tableView?.dataSource = viewModel
        
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableView.automaticDimension
        
        tableView?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        tableView?.register(NamePictureCell.nib, forCellReuseIdentifier: NamePictureCell.identifier)
        tableView?.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        tableView?.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
        tableView?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
    }
}

