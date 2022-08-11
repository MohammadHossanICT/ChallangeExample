//
//  RoomsViewModel.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

final class RoomsViewModel: RoomsViewModelOutput {
    private var roomsUseCase: RoomsUseCase

    internal var rooms: [Room] = []

    weak var view: RoomsViewBehaviour?

    init(roomsUseCase: RoomsUseCase) {
        self.roomsUseCase = roomsUseCase
    }
}

extension RoomsViewModel: RoomsViewModelInput {
    func getRooms() async {
        view?.showActivityIndicator()
        do {
            rooms = try await  roomsUseCase.execute()
            view?.updateSnap()
        } catch {
            view?.showError(message: (error as! APIError).localizedDescription)
        }
    }
}
