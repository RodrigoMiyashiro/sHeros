protocol CharacterProvider {
    func obtainCharacter(_ id: Int, completion: @escaping(CharacterSummaryDetail?, Error?) -> Void)
}
