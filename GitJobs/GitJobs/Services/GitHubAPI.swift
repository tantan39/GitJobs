//
//  GitHubAPI.swift
//  GitJobs
//
//  Created by Tan Tan on 4/20/21.
//


import Alamofire
import SwiftyJSON
class GitHubAPI: NSObject {
    static let manager = GitHubAPI()
    
    func fetchJobs(location: String?, completion: @escaping  (Result<Any?, Error>) -> Void) {
        let parameters = ["location": location]
        
        AF.request("https://jobs.github.com/positions.json", parameters: parameters, encoder: URLEncodedFormParameterEncoder.default).responseJSON { (response) in
            switch response.result {
            case .success ( _):
                let jobs = try! JSONDecoder().decode(Array<JobModel>.self, from: response.data!)
                
                completion(.success(jobs))
            case .failure(let error):
                
                print(error.localizedDescription)
                completion(.failure(error))
                
            }
        }
    
    }
}
