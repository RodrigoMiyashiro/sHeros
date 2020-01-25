import Foundation

final class ObtainCharacterRequest: CharacterProvider, RemoteProvider {
    private var network: HTTPClient
    
    init(network: HTTPClient) {
        self.network = network
    }
    
    func obtainCharacter(_ id: Int, completion: @escaping(CharacterSummaryDetail?, Error?) -> Void) {
        let path = "/v1/public/characters/\(id)"
        let url = self.baseRemoteAddress().appendedPath(path)
        let parameters: [String: String] = self.baseParams()
        
        do {
            let characterSummaryDetail: CharacterSummaryDetail? = try self.network.request(url,
                                                                                            httpMethod: .get,
                                                                                            queryParamenters: parameters,
                                                                                            headerParamenters: nil,
                                                                                            bodyParamenters: nil)
            completion(characterSummaryDetail, nil)
        } catch {
            completion(nil, HTTPError.requestError(""))
        }
    }
}
