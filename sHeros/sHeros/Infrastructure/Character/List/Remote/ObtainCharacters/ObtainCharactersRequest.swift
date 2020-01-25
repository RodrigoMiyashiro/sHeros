import Foundation

final class ObtainCharactersRequest: CharactersProvider, RemoteProvider {
    private var network: HTTPClient
    
    init(network: HTTPClient) {
        self.network = network
    }
    
    func obtainCharacters(_ page: Int, completion: @escaping(CharactersSummary?, Error?) -> Void) {
        let path = "/v1/public/characters"
        let url = self.baseRemoteAddress().appendedPath(path)
        let parameters: [String: String] = self.baseParams(page)

        do {
            let charactersSummary: CharactersSummary? = try self.network.request(url,
                                                                                 httpMethod: .get,
                                                                                 queryParamenters: parameters,
                                                                                 headerParamenters: nil,
                                                                                 bodyParamenters: nil)
            completion(charactersSummary, nil)
        } catch {
            completion(nil, HTTPError.requestError(""))
        }
    }
}
