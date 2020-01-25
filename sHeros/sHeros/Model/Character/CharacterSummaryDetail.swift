struct CharacterSummaryDetail: Attributes, Codable {
    var copyright: String
    var character: CharacterDetail?

    private enum CodingKeys: String, CodingKey {
        case copyright
        case character = "data"
    }
}
