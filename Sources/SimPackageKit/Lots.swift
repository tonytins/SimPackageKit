
/// Protocol to obtain lot informations
protocol LotProvider {
    
    /// Folders where the character files are stored
    var baseFolder: String { get set }
    
    /// Returns a list of all lot names
    var names: [String] { get set }
    
    func findLot(inst: UInt) -> LotItem
    func findLotsOwnedBySim(simInst: UInt) -> [LotItem]
}


protocol LotItem {
    var instance: UInt { get set }
    var name: String { get set }
    var lotName: String { get set }
    var owner: UInt { get set }
}
