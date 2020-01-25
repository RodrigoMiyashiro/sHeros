protocol HTTPClient {
    typealias QueryParamenters = [String: String]?
    typealias HeaderParamenters = [String: String]?
    typealias BodyParamenters = [String: Any]?

    func request<T>(_ remote: RemoteAddress,
                    httpMethod: HTTPMethod,
                    queryParamenters: QueryParamenters,
                    headerParamenters: HeaderParamenters,
                    bodyParamenters: BodyParamenters) throws -> T? where T: Decodable
}
