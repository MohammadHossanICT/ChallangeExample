//
//  PeopleDetailsViewController.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import UIKit

final class PeopleDetailsViewController: UIViewController {

    private let peopleDetailsViewModel:PeopleDetailsContract

    private lazy var parentStackView: UIStackView = {
        return UIStackView.createStackView()
    }()
    
    lazy var nameLabel: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("name", comment: ""))
    }()
    
    lazy var nameValue: UILabel = {
        return UILabel.createLabel()
    }()
    
    lazy var emailLabel: UILabel = {
        return UILabel.createLabel(text:NSLocalizedString("email", comment: ""))
    }()
    
    lazy var emailValue: UILabel = {
        return UILabel.createLabel()
    }()
    
    lazy var jobLabel: UILabel = {
        return UILabel.createLabel(text:NSLocalizedString("job_title", comment: ""))
    }()
    
    lazy var jobValue: UILabel = {
        return UILabel.createLabel()
    }()
    
    lazy var joinedDateLabel: UILabel = {
        return UILabel.createLabel(text: NSLocalizedString("joined_date", comment: ""))
    }()
    
    lazy var joinedDateValue: UILabel = {
        return UILabel.createLabel()
    }()
    
    init(peopleDetailsViewModel:PeopleDetailsContract) {
        self.peopleDetailsViewModel = peopleDetailsViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupData()

    }

    private func setupUI() {
        self.view.addSubview(parentStackView)
        parentStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant:-10.0).isActive = true
        
        parentStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:-10.0).isActive = true
        
        parentStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:100.0).isActive = true
    
                
        [(nameLabel, nameValue), (emailLabel, emailValue), (jobLabel, jobValue), (joinedDateLabel, joinedDateValue)].forEach {  element in
            
            let stackView = createGroupStackView()
            stackView.addArrangedSubview(element.0)
            stackView.addArrangedSubview(element.1)

            parentStackView.addArrangedSubview(stackView)
        }
    }
    
    private func setupData() {
        nameValue.text = peopleDetailsViewModel.people.firstName
        emailValue.text = peopleDetailsViewModel.people.email
        jobValue.text = peopleDetailsViewModel.people.jobTitle
        joinedDateValue.text = peopleDetailsViewModel.people.joinedDate

    }
    
    private func createGroupStackView()-> UIStackView {
        return  UIStackView.createStackView(axis: .horizontal, alignment: .leading, distribution: .fillEqually)
    }

}
