import Foundation
  

   
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
    print("\n")
    print( "Welcome to The Spider-Man! This is a game where you get to control the story that our friendly neighborhood superhero will follow.\n")
    print("Your choices decide the outcome of the story.\n")
    print("Additionally, the battles you encounter will have a critical moment where you decide the best action to take to defeat your enemy.\n")
    print("Your choices have life and death consequences.\n")
    print("Without further to do, let us begin!\n")
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
            print("You enter through the top of the building and see four civilians on four different floors.\n")
            print("You try to save all of them, but the building collapses on you.\n")
            return.death

     

        case "b":
            print("You enter through the bottom of the building and see four civilians above you on four different floors.\n")
            print("You leap up in the air and use your webs to zip through the building.\n")
            print("You manage to save all of the civilians while leaping up into the air like a boss.\n")
            return.fightKraven
            
        default:
            print("You failed to save any of the civilians.\n")
            return.fightKraven
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
            print("Kraven: You are my last hunt Spider-Man. Give me a worthy fight.\n")
            print("Spider-Man: Kraven? Why are you here?\n")
            print("Kraven: To kill you!\n")
            key = getKeyboardInput(prompt:"Kraven throws a knife at you. Press y to throw it back at him or press x to dodge it.", allowedCharacters:["y", "x"])
            switch key {
            case "y":
                print("You threw the knife back at Kraven. Kraven dodged the knife, but it gave you the opportunity to catch him by surprise and knock him out.\n")
                print("Spider-Man: At least that is taken care of. Wait, where did he go?\n")
                return.meetVillain
            case "x":
                print("You dodged the knife, but that was just a distraction. Kraven gains the upper hand and kills you.\n")
                return.death
            default:
                print("You did nothing, so you died.\n")
                return.death
            }
                
        case "c":
            print("You start chasing the person across the rooftop.\n")
            print("You aren't fast enough, so this mysterious person is able to escape you.\n")
            return.meetVillain

        default:
            print("As you swing throughout the city, somebody shoots a tranquilizer at you, and you fall onto a rooftop.\n")
            print("Kraven: You are my last hunt Spider-Man. Give me a worthy fight.\n")
            print("Spider-Man: Kraven? Why are you here?\n")

            key = getKeyboardInput(prompt: "Kraven throws a knife at you. Press d to dodge it or press t to throw it back at him", allowedCharacters:["d", "t"])
            switch key {
            case "d":
                print("You threw the knife back at Kraven, which gave you an opportunity to catch him by surprise and knock him out.\n")
                print("Spider-Man: At least that is taken care of. Wait, where did he go?\n")
                return.meetVillain
                
            case "t":
                print("You dodged the knife, but this was just a distraction. Kraven is able to gain the upper hand and beats you to death.\n")
                return.death

            default:
                print("You did nothing, so you died.\n")
                return.death
            }
        }
    } while key != "c"
      return .death
    
    
}


func meetVillain() -> State {
    print("Back at Oscorp.....\n")
    print("Secret Villain: Did you kill him?\n")
    print("Kraven: He escaped like the cowardly bug he is.\n")
    print("Secret Villain: We need to release the others. I cannot let myself die because of your incompetence.\n")
    var key: Character
    repeat {
        key = getKeyboardInput(prompt:"Press a to continue.\n", allowedCharacters:["a"])
        switch key {
        case "a":
            return.chooseVillain

        default:
            return.chooseVillain
        }
    } while key != "a"
    return.death
}


func chooseVillain() -> State {
    print("Spider-Man: Hydro-Man, Sandman, and Rhino are on the loose. I have to stop them.\n")
    var key:Character
    repeat {
        key = getKeyboardInput(prompt:"Press c to select the villain you want to go after first.\n", allowedCharacters:["c"])
        switch key {
        case "c":
            key = getKeyboardInput(prompt: "Press r to select Rhino, s to select Sandman, h to select Hydro-Man.\n", allowedCharacters:["r", "s", "h"])
            switch key {
            case "r":
                return.rhinoFight
            case "s":
                return.sandFight
            case "h":
                return.hydroFight

            default:
                print( "You didn't select a villain. You decided to neglect your responsibilities. You died.\n")
                return.death
            }

        default:
            print("You didn't select a villain. You decided to neglect your responsibilties. You died.\n")
            return.death

        }
    }while key != "c"
    return.death
}

func rhino() -> State{
    print("You see Rhino stampeding through downtown Manhattan.\n")
    print("Rhino: I am the Rhino!\n")
    print("Spider-Man lands in front of him.\n")
    print("Spider-Man: I think we get the message.\n")
    print("Spider-Man jumps on top of Rhino and tries to smash him into walls and vehicles.\n")
    var key: Character
    repeat {
        key = getKeyboardInput(prompt:"Critical Moment: Press t to throw an object at Rhino or press w to web him in the eyes.\n", allowedCharacters:["t", "w"])
        switch key {
        case "w":
            print("Rhino loses his footing and slips onto the ground, which knocks him out. You have defeated Rhino and prevented unnecessary destruction!\n")
            key = getKeyboardInput(prompt: "Have you played against Sandman, press y for yes and n for no?\n", allowedCharacters:["y", "n"])
            switch key {
            case "y":
                key = getKeyboardInput(prompt:"Have you played against Hydro-Man, press y for yes and n for no?\n", allowedCharacters:["y", "n"])
                switch key {
                case "y":
                    return.lizardFight
                case "n":
                    return.hydroFight
                    
                default:
                    print("Pick y for yes and n for no please.\n")
                   
            }
            case "n":
                return.sandFight

            default:
                print("You didn't do anything. You died.\n")
                return.death
            }
        case "t":
            print("Rhino catches the object and smashes it onto Spider-Man. Spider-Man falls onto the ground where Rhino stomps on him till his death.\n")
            return.death

        default:
            print("You didn't do anything. Rhino kills you.\n")

        }
    }while key == "s"
    return.death
}

func hydro() -> State {
    print("Hydro-Man: Bugs are afraid of water Spider-Man!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Throw electrical wires at Hydro-Man by pressing w or attempt to evaporate him with lights by pressing l.\n", allowedCharacters:["l", "w"])
        switch key {
        case "w":
            print("Electricity and water don't work well. You defeated Hydro-Man.\n")
            key = getKeyboardInput(prompt: "Have you fought Sandman, press y for yes and n for no?\n", allowedCharacters:["y", "n"])
            switch key {
            case "y":
                key = getKeyboardInput(prompt:"Have you fought Rhino, press y for yes and n for no?\n", allowedCharacters:["y", "n"])

                switch key {
                case "y":
                    return.lizardFight

                case "n":
                    return.rhinoFight

                default:
                    print("Please pick y for yes or n for no.\n")
                }

            case "n":
                return.sandFight

            default:
                print("Please pick y for yes or n for no.")
            }
        case "l":
            print("You died because Hydro-Man isn't affected by evaporation.\n")
            return.death

        default:
            print("You didn't do anything, so Hydro-Man kills you easily.\n")
            return.death

        }
    }while key == "w"
    return.death
}

func sand() -> State {
    print("Sandman is destroying the Brookyln Bridge!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press w to attract Sandman to the water or press a to attract him to the air.\n", allowedCharacters:["a", "w"])
        switch key {
        case "a":
            print("Sandman easily kills you.\n")
            return.death

        case "w":
            print("Sandman dies and you save many people as his sand turns into mud.\n")
            key = getKeyboardInput(prompt: "Have you fought against Rhino, enter in y for yes and n for no?\n", allowedCharacters:["y", "n"])
            switch key {
            case "y":
                key = getKeyboardInput(prompt:"Have you fought against Hydro-Man, enter in y for yes and n for no?\n", allowedCharacters:["y", "n"])
                switch key {
                case "y":
                    return.lizardFight
                case "n":
                    return.hydroFight

                default:
                    print("Please enter in y for yes and n for no.\n")
                }

                case "n":
                    return.rhinoFight
                default:
                    print("Please enter in y for yes and n for no.\n")
            }

        default:
            print("Something.\n")
        }
    }while key == "s"
    return.death

}

func lizard() -> State {
    print ("Lizard is dragging people into the sewers!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Attract Lizard to the daylight by pressing d or go into the sewers by pressing s.\n", allowedCharacters:["s", "d"])
        switch key {
        case "d":
            print("You defeated Lizard by getting him into the sunlight, which took him out of his home environment.\n")
            return.morbiusNegative
        case "s":
            print("You died. You went into the home environment of the Lizard, which made Spider-Man an easy kill.\n")
            return.death
        default:
            print("You failed everybody. You died.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func morbiusNegative() -> State {
    print("Spider-Man: How is this possible? The five most dangerous villains in the city are not loose in the city.\n")
    print("Spider-Man: I have to find a way to take down Morbius, Mr. Negative, Venom, Kraven, Green Goblin.\n")
    print ("Morbius and Mr. Negative are harming people around the city. Who do you go for first?\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press m to go after Morbius or press n to go after Mr. Negative.\n", allowedCharacters:["m", "n"])
        switch key {
        case "m":
            return.morbiusFirst
        case "n":
            return.negativeFirst
        default:
            print("The city gets destroyed.\n")
            return.death
        }
    }while key == "s"
    return.death

}

func morbiusFirst() -> State {
    print ("Morbius is biting people across the city and turing them into vampires!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press l to shine a light on morbius or press w to web him up.\n", allowedCharacters:["l", "w"])
        switch key {
        case "w":
            print("You die. Your strength was not enough against the living vampire himself!\n")
            return.death

        case "l":
            print("You saved the people. Vampires hate light!\n")
            return.negativeSecond

        default:
            print("You failed the city.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func negativeSecond() -> State {
    print ("Mr. Negative is corrupting people across the city with his negative energy.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Attract Mr. Negative to the water and kick him by pressing k or web him up by pressing f\n", allowedCharacters:["f", "w"])
        switch key {
        case "f":
            print("You failed. Mr Negative's darkforce energy consumes you and allows for him to control your mind.\n")
            return.death

        case "w":
            print("Spider-Man grabs Mr. Negative's attention and takes him to the coast of Manhattan, where he kicks him into the water. You saved everybody!\n")
            return.VGK

        default:
            print("You failed the city by not doing anything.\n")
            return.death

        }
    }while key == "s"
    return.death

}

func VGK() -> State {
    print ("Venom and Kraven are killing people across the city in their search for Spider-Man!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"To choose Venom or Kraven, press v or k.\n", allowedCharacters:["v", "k"])
        switch key {
        case "v":
            print("Venom: We are Venom.\n")
            return.venomFirst

        case "k":
            print("Kraven: A rematch. One to decide the superior hunter.\n")
            return.kravenFirst

        default:
            print("You failed the city by not doing anything.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func venomFirst() -> State {
    print("Venom: This city will be mine. I will burn down the city you love Parker.\n")
    print("Spider-Man: Not on my watch.\n")
    print("Venom lunges at Spider-Man. Spider-Man only has seconds to decide what he has to do.\n")
    print("Spider-Man sees a bell right next to him, but Venom is approaching him rapidly.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press r to ring the bell or press w to web him up.\n", allowedCharacters:["r", "w"])
        switch key {
        case "w":
            print("You died.\n")
            return.death

        case "r":
            print("You successfully defeated Venom! Now onto Kraven.\n")
            return.kravenSecond

        default:
            print("You died because you didn't do anything.\n")
            return.death

        }
    }while key == "s"
    return.death

}

func kravenSecond() -> State {
    print("Kraven: You will pay Spider! \n")
    print("Kraven throws his spear towards Spider-Man. Spider-Man dodges it and run towards Kraven.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Punch Kraven with p or web kick him with w. \n", allowedCharacters: ["p", "w"])
        switch key {
        case "p":
            print("Kraven blocks your punch and breaks you arm. You are severely injured, which leads to you dying.\n")
            return.death
        case "w":
            print("Web kicking Kraven catches him off guard and causes him to stumble off the building.\n")
            return.badEnding
        default:
            print("You died by not doing anything.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func kravenFirst() -> State {
    print("Kraven: You will pay Spider!\n")
    print("Kraven throws his spear towards Spider-Man. Spider-Man dodges it and run towards Kraven.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Punch Kraven with p or web kick him with w\n", allowedCharacters: ["p", "w"])
        switch key {
        case "p":
            print("Kraven blocks your punch and breaks your arm. You are severely injured, which leads to you dying.\n")
            return.death
        case "w":
            print("Web kicking Kraven catches him off guard and causes him to stumble off the building.\n")
            return.venomSecond

        default:
            print("You died by not doing anything.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func venomSecond() -> State {
    print("Venom: Watch your city burn Spider-Man!\n")
    print("Spider-Man: Not on my watch.")
    print("Venom lunges towards Spider-Man, but Spider-Man rolls to the left.\n")
    print("Spider-Man spots bells right next to him as Venom is about to punch him.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press b to use the bells or press f to fight Venom with your hands.\n", allowedCharacters: ["b", "f"])
        switch key {
        case "b":
            print("Spider-Man clangs the bells together forcing the symbiote to remove itself from its host. The symbiote falls off the building.\n")
            return.goodEnding
        case "f":
            print("Venom overpowers you and you die.\n")
            return.death

        default:
            print("You died by doing nothing..\n")
            return.death
        }
    } while key == "s"
    return.death
}

func negativeFirst() -> State {
    print("Mr. Negative is corrupting people around the city!\n")
    print("Spider-Man dodges a energy blast from Mr.Negative as he jumps towards him.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press w to web Mr. Negative up or f to fight him with your hands\n", allowedCharacters:["f", "w"])
        switch key {
        case "f":
            print("When you tried to punch Mr. Negative, his darkforce energy consumed you and overpowered your mind and body. You failed and died.\n")
            return.death
        case "w":
            print("You sucessfully defeated Mr. Negative by containing him in a huge ball of your webs.\n")
            return.morbiusSecond

        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func morbiusSecond() -> State {
    print("Morbius is turning the people in the city into vampires!\n")
    print("Spider-Man attempts to attack Morbius as Morbius dodges Spider-Man's attempt!\n")
    print("Morbius attempts to suck Spider-Man's blood, which resorts Spider-Man to his web shooters.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press l to shoot a web and shine a light on him or press w to web him up.\n", allowedCharacters:["l", "w"])
        switch key {
        case "l":
            print("You were able to defeat Morbius.\n")
            return.VGK2
        case "w":
            print("Morbius is able to easily overpower you.\n")
            return.death

        default:
            print("You didn't do anything, so you died.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func VGK2() -> State{
    print("Kraven and Venom are killing people across the city!\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Choose k to fight Kraven first and choose v to fight Venom first.\n", allowedCharacters:["v", "k"])
        switch key {
        case "v":
            print("Venom: I await you Spider.\n")
            return.venomFirst2
        case "k":
            print("Kraven: My prey is finally here.\n")
            return.kravenFirst2

        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func venomFirst2() -> State {
    print("Venom: I have been waiting for you for such a long time Parker.\n")
    print("Venom lunges towards Spider-Man as Peter thinks about his next move.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press b to use bells or press f to fight him.\n", allowedCharacters:["b", "f"])
        switch key {
        case "f":
            print("Venom overpowers you and you die.\n")
            return.death
        case "b":
            print("You use the bells and successfully defeat Venom.\n")
            return.kravenSecond2
        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func kravenSecond2() -> State {
    print("Kraven: My rematch with my prey.\n")
    print("Kraven throws a spear at Spider-Man. Spider-Man dodges it but Kraven starts running towards him.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press p to punch Kraven or press w to web kick him \n", allowedCharacters:["p", "w"])
        switch key {
        case "p":
            print("Kraven breaks you hand and he beats you till death.\n")
            return.death
        case "w":
            print("Web kicking Kraven catches him off guard and causes him to stumble off the building.\n")
            return.trueEnding
        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func kravenFirst2() -> State {
    print("Kraven: My rematch with my prey.\n")
    print("Kraven jumps towards Spider-Man.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt: "Press p to punch Kraven or press w to web kick him \n", allowedCharacters:["p", "w"])
        switch key {
        case "p":
            print("Kraven breaks your hand and he beats you till death.\n")
            return.death
        case "w":
            print("Web kicking Kraven catches him off guard and causes him to stumble off the building.\n")
            return.venomSecond2
        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func venomSecond2() -> State {
    print("Venom: I have been waiting for this Spider.\n")
    print("Spider-Man: Me too.\n")
    print("Venom lunges towards Spider-Man.\n")
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press b to use the bells or press p to punch Venom.\n", allowedCharacters:["b", "p"])
        switch key {
        case "b":
            print("You sucessfully defeat Venom by using the bells\n")
            return.carnage
        case "p":
            print("Venom overpowers you and you die.\n")
            return.death
        default:
            print("You died by doing nothing.\n")
            return.death
        }
    }while key == "s"
    return.death
}

func badEnding() -> State {
    print("Green Goblin: Look here Spider. It is me. In the flesh.\n")
    print("Spider-Man: Goblin, how are you alive again?\n")
    morality = 50
    var key : Character
    repeat {
        key  = getKeyboardInput(prompt:"Press a to end the game and to return to the start menu.\n ", allowedCharacters:["a"])
        switch key {
        case "a":
            print("Game Over. Your morality was\(morality)\n")
            return.initialStart
            
        default:
            print("Please press a to end the game and to return to the start menu.\n")
        }
    }while key == "s"
    return.initialStart
}

func goodEnding() -> State {
    print("Green Goblin: Look here Spider. It is me. In the flesh.\n")
    print("Spider-Man: Goblin, how are you alive again?\n")
    morality = 75
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press a to end the game and to return to the start menu.\n", allowedCharacters:["a"])
        switch key {
        case"a":
            print("Game Over. Your morality was \(morality).\n")
            return.initialStart
        default:
            print("Please press a to end the game and to return to the start menu.\n")
        }
    }while key == "s"
    return.initialStart
}

func trueEnding() -> State {
    print("Green Goblin: Look here Spider. It is me. In the flesh.\n")
    print("Spider-Man: Goblin, how are you alive again?\n")
    morality = 100
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press a to end the game and to return to the start menu.\n", allowedCharacters:["a"])
        switch key {
        case "a":
            print("Game Over. Your morality was \(morality).\n")
            return.initialStart
        default:
            print("Please press a to end the game and to return to the start menu.\n")
        }
    }while key == "s"
    return.initialStart
}

func carnage() -> State {
    print("Green Goblin escapes to Oscorp where he unleashes a deadly villain.\n")
    morality = -25
    var key : Character
    repeat {
        key = getKeyboardInput(prompt:"Press s to use the symbiote against Carnage or press n to not use it.\n", allowedCharacters:["s", "n"])
        switch key {
        case "s":
            print("You are able to defeat Carnage, but you become evil and corrupted by the symbiote and decide to take over the city.\n")
            print("Game over. You failed the city. Your morality is \(morality)\n")
            return.initialStart
        case "n":
            print("Carnage kills you with ease.\n")
            return.death
        default:
            print("You decided to do nothing, which leads to Carnage easily killing you.\n")
            return.death
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
        

