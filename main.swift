import Foundation

var relationship = 0
  

   
enum State {

    // Start point for the game
    case initialStart

    // Building Fire Sequence
    case inTheBuilding

    // Spider-Man Fights Kraven
    case fightKraven

    // Kraven meets Green Goblin
    
    case meetVillain

    // Function to choose order you will fight Rhino, Hydro-Man, and Sandman

    case chooseVillain

    // Function to fight Rhino

    case rhinoFight

    // Function to fight Hydro-Man

    case hydroFight

    // Function to fight Sandman

    case sandFight

    //Function to fight Lizard

    case lizardFight

    //Function to choose if you fight Mr. Negative or Morbius first
         
    case morbiusNegative

    // Function for if you choose to fight Morbius first

    case morbiusFirst

    // Function for if you choose to fight Mr. Negative second

    case negativeSecond

    // Function for if you choose to fight Mr.Negative first

    case negativeFirst

    // Function for if you chose to fight Morbius second

    case morbiusSecond

    // Choice between Venom, Goblin, and Kraven if Morbius is picked first

    case VGK

    // Choice between Venom, Goblin, and Kraven if Negative is picked first

    case VGK2

    // Leads to bad ending if Morbius is picked first

    case venomFirst

    case kravenSecond

    //Leads to good ending if Morbius is picked first

    case kravenFirst

    case venomSecond

    // Leads to true ending if Negative is picked first

    case venomFirst2

    case kravenSecond2

    //Leads to Carnage ending if Negative is picked first

    case kravenFirst2

    case venomSecond2

    case goodEnding

    case badEnding

    case trueEnding

    case carnage
    
    case death

    
}

var morality = 0 


func getKeyboardInput(prompt:String, allowedCharacters:Set<Character>) -> Character {
    var key : Character = "\u{0000}"
    repeat {
        print("\(prompt) ->", terminator:"")
        if let line = readLine() {
            key = line.first ?? key
        }
        print("\n")
        if !allowedCharacters.contains(key) {
            print(" Enter in one of the \(allowedCharacters).\n")
        }
    } while  !allowedCharacters.contains(key)
    return key
}

func startPath() -> State {
    print( "Welcome to The Spider-Man! This is a game where you get to control the story that our friendly neighborhood superhero will follow. Without further to do, get ready to start your unknown adventure into New York City!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press s to begin the game.\n", allowedCharacters:["s"])
        switch key {
        case "s":
            return .inTheBuilding
        default:
            return .inTheBuilding
        }
    } while key == "s"
    return .inTheBuilding
}
            
    

func handleBuildingFire() -> State {
    print("You are swinging through the city and see a building on fire.\n")
    var key : Character
    
    
    repeat {
        key = getKeyboardInput(prompt:"Press t to enter in the building through the top or press b to enter the building through the bottom.\n", allowedCharacters:["t", "b"])
        switch key {
        case "t":
            print("You enter through the top of the building and see four civilians on four different floors. You try to save all of them, but the building collapses on you.\n")
            return.death

     

        case "b":
            print("You enter through the bottom of the building and see four civilains above you on four different floors. You leap up in the air and use your webs to zip through the building. You manage to save all of the civilians while leaping up into the air like a boss.\n")
            return.fightKraven
        default:
            print("You failed to save any of the civilians.\n")
        }
    } while key == "t" 
    return .death
}

func fightKraven() -> State {
    print("As you drop the civilians to the ground, you see a mysterious person running across the rooftops.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press c to chase this mysterious person or press w to swing in the city.\n", allowedCharacters:["w", "c"])
        switch key {
        case "w" :
            print("As you patrol the city while swinging, somebody shoots a tranquilizer at you, and you fall onto a rooftop of a building\n")
            return .death
        case "c":
            print("You start chasing the person across the rooftop.\n")

        default:
            print("As you swing throughout the city, somebody shoots a tranquilizer at you, and you fall onto a rooftop.\n")
        }
    } while key != "c"
      return .death
    
    
}


func meetVillain() -> State {
    print("You are about to meet the villain\n!")
    var key: Character
    repeat {
        key = getKeyboardInput(prompt:"Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
            return.death

        case "w":
            print("Something.\n")
            return.death

        default:
            print("Something.\n")
        }
    } while key == "s"
    return.death
}


func chooseVillain() -> State {
    print("You are about to meet the villain\n!")
    var key:Character
    repeat {
        key = getKeyboardInput(prompt:"Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
            return.death

        case "w":
            print("Something.\n")
            return.death

        default:
            print("Something.\n")

        }
    }while key == "s"
    return.death
}

func rhino() -> State{
    print("You are about to meet the villain\n!")
    var key: Character
    repeat {
        key = getKeyboardInput(prompt:"Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
            return.death
        case "w":
            print("Something.\n")
            return.death

        default:
            print("Something.\n")

        }
    }while key == "s"
    return.death
}

func hydro() -> State {
    print("You are about to meet the villain\n!")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
            return.death
        case "w":
            print("Something.\n")
            return.death

        default:
            print("Something.\n")

        }
    }while key == "s"
    return.death
}

func sand() -> State {
    print("You are about to meet the villain\n!")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
            return.death

        case "w":
            print("Something.\n")
            return.death

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death

}

func lizard() -> State {
    print ("You are about to meet the villain\n!")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
        print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func morbiusNegative() -> State {
    print ("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case"s":
            print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death

}

func morbiusFirst() -> State {
    print ("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")

        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func negativeSecond() -> State {
    print ("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")

        case "w":
            print("Something.\n")

        default:
            print("Something.\n")

        }
    }while key == "s"
    return.death

}

func VGK() -> State {
    print ("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")

        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func venomFirst() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")

        case "w":
            print("Something.\n")

        default:
            print("Something.\n")

        }
    }while key == "s"
    return.death

}

func kravenSecond() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something\n", allowedCharacters: ["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func kravenFirst() -> State {
    print("You are about to meet the vilain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something\n", allowedCharacters: ["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func venomSecond() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters: ["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    } while key == "s"
    return.death
}

func negativeFirst() -> State {
    print("You are about to mee the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func morbiusSecond() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func VGK2() -> State{
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Something.\n")

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func venomFirst2() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Somethinng.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func kravenSecond2() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func kravenFirst2() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func venomSecond2() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func badEnding() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key  = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func goodEnding() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something\n", allowedCharacters:["s", "w"])
        switch key {
        case"s":
            print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Somethinng.\n")
        }
    }while key == "s"
    return.death
}

func trueEnding() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death
}

func carnage() -> State {
    print("You are about to meet the villain\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press something.\n", allowedCharacters:["s", "w"])
        switch key {
        case "s":
            print("Something.\n")
        case "w":
            print("Something.\n")
        default:
            print("Something.\n")
        }
    }while key == "s"
                  
    return.death
}


func main() {
    var state = State.initialStart
    repeat {
        switch state {
        case .initialStart:
            state = startPath()
            
        case .inTheBuilding:
            state = handleBuildingFire()

        case .fightKraven:
            state = fightKraven()
            
        case.meetVillain:
            state = meetVillain()
            
        case.chooseVillain:
            state = chooseVillain()

        case.hydroFight:
            state = hydro()

        case.sandFight:
            state = sand()

        case.rhinoFight:
            state = rhino()

        case.lizardFight:
            state = lizard()

        case.morbiusNegative:
            state = morbiusNegative()

        case.morbiusFirst:
            state = morbiusFirst()

        case.negativeSecond:
            state = negativeSecond()

        case.negativeFirst:
            state = negativeFirst()

        case.morbiusSecond:
            state = morbiusSecond()

        case.VGK:
            state = VGK()

        case.venomFirst:
            state = venomFirst()

        case.kravenSecond:
            state = kravenSecond()

        case.kravenFirst:
            state = kravenFirst()

        case.venomSecond:
            state = venomSecond()

        case.VGK2:
            state = VGK2()

        case.venomFirst2:
            state = venomFirst2()

        case.kravenSecond2:
            state = kravenSecond2()

        case.kravenFirst2:
            state = kravenFirst2()

        case.venomSecond2:
            state = venomSecond2()
            
        case.goodEnding:
            state = goodEnding()

        case.badEnding:
            state = badEnding()

        case.trueEnding:
            state = trueEnding()
         
        case .carnage:
            state = carnage()
            
        case .death:
            do {}
        }
    } while state != .death
    print("Game Over. You failed.\n")
}

main()
        

