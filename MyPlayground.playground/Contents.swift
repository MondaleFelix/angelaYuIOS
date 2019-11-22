
enum Style: String {
    case impressionism
    case surrealism
    case cubism
    case popArt
}

struct Artist: Equatable {
    let name: String
    let style: Style
    let yearBorn: Int
    
    static func == (lhs: Artist, rhs: Artist) -> Bool {
        return lhs.name == rhs.name
    }
}

// Example instances of Artists, use for testing your equatable
let monet = Artist(name: "Monet", style: .impressionism, yearBorn: 1840)
let dali = Artist(name: "Salvador Dali", style: .surrealism, yearBorn: 1904)
let andy = Artist(name: "Andy Warhol", style: .popArt, yearBorn: 1928)

//This is what we want to achieve, being able to compare artists like:

monet == dali //returns true? false?
