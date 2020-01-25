struct ListOfCharacters: Codable {
    var offset: Int
    var limit: Int
    var total: Int
    var count: Int
    var characters: [CharacterSimple]?

    private enum CodingKeys: String, CodingKey {
        case offset, limit, total, count
        case characters = "results"
    }
}
