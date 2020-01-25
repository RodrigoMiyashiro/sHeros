struct CharacterFull: SimplifiedCharacter, Codable {
    var id: Int
    var name: String
    var thumbnail: Thumbnail?
    var description: String?
}
