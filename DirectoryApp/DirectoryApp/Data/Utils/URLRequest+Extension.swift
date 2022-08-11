//
//  URLRequest+Extension.swift
//  DirectoryApp
//
//  Created by  Mohammad on 04/08/22.
//

import Foundation

extension URLRequest {
    static func getURLRequest(for apiRequest: ApiRequestType) -> URLRequest? {
        if let url = URL(string: apiRequest.baseUrl.appending(apiRequest.path)),
           let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) {
            let urlRequest = URLRequest(url: urlComponents.url!)
            return urlRequest
        } else {
            return nil
        }
    }
}
