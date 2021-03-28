

/// Contains a interface that can be used to display the Wizard GUI
protocol WizardForm {
    
    /// Returns null, or the suggested the next Wizard Step
    var next: WizardForm? { get set }
    
    /// Returns the number of the current step
    var wizardStep: Int { get set }
    
    /// Returns the description for the current step
    var wizardMessage: String { get set }
    
    /// Returns true, if it is possible to continue to the next step
    var canContine: Bool { get set }
}


/// Cotnains a interface must implemented by the first step of the wizard chain
protocol WizardEntry : WizardForm {
    
    /// Returns a short description of this wizard
    var wizardEscription: String { get set }
    
    /// Returns the title of the wizard
    var wizardCaption: String { get set }
}

/// This has to be implemented by the last step in the Wizard Chain
protocol WizardFinish : WizardForm {
    
    /// This method is called BEFORE the panel get's displayed
    init()
}
