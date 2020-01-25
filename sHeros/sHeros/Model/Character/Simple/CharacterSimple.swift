struct CharacterSimple: SimplifiedCharacter, Codable {
    var id: Int
    var name: String
    var thumbnail: Thumbnail?
}
