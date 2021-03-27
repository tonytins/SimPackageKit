// SimPE designed this as an interface, but it's usage
// is more similar to a struct.
struct Alias {
    
    var id: UInt
    
    /// The long name
    var name: String
    
    
    /// Can be used to store meta information with alias entry\
    // Rough equivalent of object[] in SimPE's IAlias
    var tag: [Any]
}

protocol PackedFile {
    
    /// Return true if the packed file is compressed
    var isCompressed: Bool { get set }
    
    /// Returns the size of the file
    var size: Int { get }
    
    /// Returns the file's signature
    // Original implementation says that this
    // also returns the size of the file?
    var signature: UInt16 { get set }
    
    /// Returns the uncompressed file size
    var uncompressedSize: UInt8 { get }
    
    /// Returns the plain file data (might be compressed)
    var data: [UInt8] { get }
    
    /// Returns the plain file data (might be compressed)
    var plainData: [UInt8] { get }
    
    /// Returns the plain file data. If the packed file is compressed it will be decompressed.
    var uncompressedData: [UInt8] { get }
    
    /// Returns the uncompressed data
    /// - Parameter maxSize: Maximum number of bytes that should be returned
    func uncompressedData(maxSize: Int) -> Array<UInt8>
    
    /// Returns part of a decompressed file
    /// - Parameter size: Max number of bytes to decompress
    func decompress(size: Float) -> Array<UInt8>
}

struct FileDescriptorData {
    var group: UInt
    var instance: UInt
    var subType: UInt
    var type: UInt
    var typeName: Alias
}

protocol PackedFileDescriptor {
    
    /// Creates a clone of the object data
    func clone() -> FileDescriptorData
    
    /// Same as userData() but you can decide if the changedUserData() event gets fired
    /// - Parameters:
    ///   - data: The new user data
    ///   - fire: True if you want to fire a changedUserData() evebt
    func setUserData(data: [UInt], fire: Bool)
    
    /// Returns the defualt string to display in the resource list
    func toResListString() -> String
}
