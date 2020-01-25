struct Thumbnail: Codable {
    var path: String?
    var extensionName: String?

    private enum CodingKeys: String, CodingKey {
        case path
        case extensionName = "extension"
    }
}
