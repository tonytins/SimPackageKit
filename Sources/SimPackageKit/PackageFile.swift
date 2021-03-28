// This is a big protocol with a lot of overloads.
protocol PackageFile {
    
    /// The persistent state of this package
    var Persistent: Bool { get set }
    
    /// Returns or changes the stored file index
    var index: [PackedFileDescriptor] { get }
    
    /// Create a clone of this package file
    func clone() -> PackageFile
    
    /// Returns the file index item for a given file
    /// - Parameter index: Number of files within the index
    func getFileIndex(index: UInt) -> PackedFileDescriptor
    
    /// Remove the described file from the index
    /// - Parameter pdf: A packed file descriptor
    func remove(pfd: PackedFileDescriptor)
    
    /// Remove all file file descriptors that are marked for deletion
    func removeMarked()
    
    /// Adds a list of descriptors to the index
    /// - Parameter pdf: The packed file descriptor
    func Add(pfd: PackedFileDescriptor)
    
    /// Adds a list of descriptors to the index
    /// - Parameter pdfs: List of the descriptors
    func Add(pfds: [PackedFileDescriptor])
    
    
    /// Adds a new descriptor to inex
    /// - Parameters:
    ///   - pfd: Packed file descriptor
    ///   - isNew: True, if offset should be set a unqie value
    func Add(pfd: PackedFileDescriptor, isNew: Bool)
    
    /// Adds a list of descriptors to the index
    /// - Parameters:
    ///   - type: Type of the new file
    ///   - subType: Subtype, class ID, or resource ID of the new file
    ///   - group: Group for the file
    ///   - instance: Instance of the file
    func Add(type: UInt, subType: UInt, group: UInt, instance: UInt)
    
}
