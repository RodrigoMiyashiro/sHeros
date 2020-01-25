struct CharactersSummary: Attributes, Codable {
    var copyright: String
    var listOfCharacters: ListOfCharacters?

    private enum CodingKeys: String, CodingKey {
        case copyright
        case listOfCharacters = "data"
    }
}
