namespace Teleportation {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    @EntryPoint()
    operation Entangle() : Unit {
        using(qs = Qubit[2]){
            H(qs[0]);
            CNOT(qs[0], qs[1]);
            DumpMachine();
            ResetAll(qs); 
        }
        
    }
}

