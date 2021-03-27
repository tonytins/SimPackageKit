protocol CommonPackage {
    
    /// Returns or sets the folder where the character files are stored
    var packedFile: PackedFile { get set }
}

protocol OpcodeProvider : CommonPackage {
    
    /// Returns the name of the function
    /// - Parameter opcode: Opcode of the primitive
    func findName(opcode: UInt) -> String
    
    
    /// Returns the name of the expression operator
    /// - Parameter op: Numerical value of the operator
    func findExpressionOperator(op: UInt) -> String
}

struct SimPackageKit {
    var text = "Hello, World!"
}
