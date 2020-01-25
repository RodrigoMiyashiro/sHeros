private let remoteAddress = RemoteAddress(scheme: "https",
                                          host: "gateway.marvel.com")

protocol RemoteProvider { }

extension RemoteProvider {
    func baseRemoteAddress() -> RemoteAddress {
        return remoteAddress
    }

    func baseParams(_ offset: Int? = 1) -> [String: String] {
        let publicKey = "953a1c36578b855e547f289d2d49b062"
        let privateKey = "b270797cf2a876591321ab7f1cc79f9a182508ae"
        let ts = "1"
        let hash = GenerateCrypto.obtainMD5(ts+privateKey+publicKey)
        let limit = "4"
        let page = String(format: "%d", offset ?? 1)

        return [
            "apikey": publicKey,
            "ts": ts,
            "hash": hash,
            "limit": limit,
            "offset": page
        ]
    }
}
