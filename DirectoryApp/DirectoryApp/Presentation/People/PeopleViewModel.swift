//
//  PeopleViewModel.swift
//  DirectoryApp
//
//  Created by Mohammad on 04/08/22.
//

import Foundation

final class PeopleViewModel: PeopleViewModelOutput {

    private var peopleUseCase: PeopleUseCase
    private weak var coordinator: Coordinator?
    var peoples: [People] = []
    weak var view: PeoplesViewBehaviour?
    init(peopleUseCase: PeopleUseCase,
         coordinator: AppCoordinator) {
        self.peopleUseCase = peopleUseCase
        self.coordinator = coordinator
    }
}

extension PeopleViewModel: PeopleViewModelAction {
    func navigateToDetails(for index: Int) {
        coordinator?.navigateToPeopleDetails(people: peoples[index])
    }
}

extension PeopleViewModel: PeopleViewModelInput {
    func getPeopleImage(for index: Int, completion: @escaping (Data) -> Void) {
        Task {
            do {
                let imageData =  try await peopleUseCase.getImage(for: peoples[index].avatar)

                DispatchQueue.main.async {
                    completion(imageData)
                }
            } catch {
            }
        }
    }
    func getPeoples() async {
        view?.showActivityIndicator()
        do {
            peoples = try await  peopleUseCase.execute()
            view?.applySnapshot(animatingDifferences: true)
        } catch {
            view?.showError(message: (error as! APIError).localizedDescription)
        }
    }
}
