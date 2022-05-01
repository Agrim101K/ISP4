enum State {
    case intialStart
    
    case inTheBuilding
    
    case fightKraven
    
    case rooftopKraven
    
    case handKraven

    case wallKraven
    
    case chaseKraven
    
    case meetVillain
    
    case death
}


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
    } while !allowedCharacters.contains(key)
    return key
}

func startPath() -> State {
    print("\n")
    print("Welcome to The Spider-Man! This is a game where you get to control the story that our friendly neighborhood superhero will follow. Without further to do, get ready to start your unknown adventure into New York City!\n")
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

func meetKraven() -> State {
    print("As you drop the civilians to the ground, you see a mysterious person running across the rooftops.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press c to chase this mysterious person or press w to swing in the city.\n", allowedCharacters:["w", "c"])
        switch key {
        case "w" :
            print("As you patrol the city while swinging, somebody shoots a tranquilizer at you, and you fall onto a rooftop of a building\n")
            return .rooftopKraven
        case "c":
            print("You start chasing the person across the rooftop.\n")

        default:
            print("As you swing throughout the city, somebody shoots a tranquilizer at you, and you fall onto a rooftop.\n")
        }
    } while key != "c"
    return .rooftopKraven
    
}

func rooftopKraven() -> State {
    print("Kraven: You have always been my greatest prey Spider-Man. Now, it is time to finish off my last hunt. \n")
    print("Spider-Man struggles to get up.\n")
    print("Spider-Man: This will be your last hunt.")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press w to web Kraven up or p to punch Kraven. Your choices in this fight will result in your victory or death.\n", allowedCharacters:["w", "p"])
        switch key {
        case "w":
            print("You try to web Kraven up, but he takes your web shot and pulls you towards him. Kraven grabs you by the throat.\n")
        case "p":
            print("You attempt to punch Kraven, but he grabs your hand and throws you against a wall.\n")
            return .wallKraven

        default:
            print("You didn't react in time. Kraven is able to overpower Spider-Man easily and kill him.\n")
            return .death
        }
        
        } while key == "w"; 
        return .handKraven
    }


func wallKraven() -> State {
    return.death
}

func handKraven() -> State {
    return.death
}

func chaseKraven() -> State {
    return.death
}

func meetVillain() -> State {
    return.death
}


func main() {
    var state = State.intialStart
    repeat {
        switch state {
        case .intialStart:
            state = startPath()
            
        case .inTheBuilding:
            state = handleBuildingFire()
            
        case .fightKraven:
            state = meetKraven()
            
        case.rooftopKraven:
            state = rooftopKraven()
            
        case.chaseKraven:
            state = chaseKraven()

        case.wallKraven:
            state = wallKraven()
            
        case.handKraven:
            state = handKraven()
         
        case .meetVillain:
            state = meetVillain()
            
        case .death:
            do {}
        }
    } while state != .death
    print("Game Over. You failed.\n")
}

main()
        
