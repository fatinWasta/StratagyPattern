import UIKit

//Dogs behaviour: Bark and run
//dog can run fast
//dog can run slow
//Dog can bark loud
//Dog can bark soft

//Stratagies:
protocol BarkBehaviour {
    func bark()
}

protocol RunBehaviour {
    func run()
}

class RunFast: RunBehaviour {
    func run() {
        print("Running fast")
    }
}

class RunSlow: RunBehaviour {
    func run() {
        print("Running slow")
    }
}

class BarkLoud: BarkBehaviour {
    func bark() {
        print("Barking loud")
    }
}

class BarkSoft: BarkBehaviour {
    func bark() {
        print("Barking soft")
    }
}

//Parent class will define stratagies
class Dog {
    var runBehaviour: RunBehaviour
    var barkBehaviour: BarkBehaviour
    
    init(runBehaviour: RunBehaviour, barkBehaviour: BarkBehaviour) {
        self.runBehaviour = runBehaviour
        self.barkBehaviour = barkBehaviour
    }
    
    func setRunBehaviour(_ newRunBehaviour: RunBehaviour) {
        runBehaviour = newRunBehaviour
    }
    
    func setBarkBehaviour(_ newBarkBehaviour: BarkBehaviour) {
        barkBehaviour = newBarkBehaviour
    }
    
    func bark() {
        barkBehaviour.bark()
    }
    
    func run() {
        runBehaviour.run()
    }
}

let nutty = Dog(runBehaviour: RunFast(), barkBehaviour: BarkSoft())
nutty.bark()
nutty.run()
nutty.setBarkBehaviour(BarkLoud())
nutty.setRunBehaviour(RunSlow())
nutty.bark()
nutty.run()

