protocol CharactersProvider {
    func obtainCharacters(_ page: Int, completion: @escaping(CharactersSummary?, Error?) -> Void)
}
