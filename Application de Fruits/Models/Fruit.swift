import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}

extension Fruit {
    static let fruites: [Fruit] = [
        Fruit(
            title: "Blueberry",
            headline: "Un super-aliment riche en antioxydants et en saveurs boréales.",
            image: "blueberry",
            gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
            description: """
              Les myrtilles sont des baies vivaces originaires d'Amérique du Nord. Elles sont célèbres pour leur couleur bleu profond due aux anthocyanes, des composés qui aident à protéger le corps contre le stress oxydatif.
              
              En cuisine, elles sont polyvalentes : des muffins classiques aux sauces complexes pour le gibier. Elles se conservent parfaitement une fois congelées sans perdre leurs propriétés nutritives.
              """,
            nutrition: ["240 kJ (57 kcal)", "14g Glucides", "2.4g Fibres", "0.7g Protéines", "Vitamine C, K", "Manganèse"]
        ),
        Fruit(
            title: "Strawberry",
            headline: "Le fruit rouge préféré des petits et des grands pour l'été.",
            image: "strawberry",
            gradientColors: [Color("ColorStrawberryLight"), Color("ColorStrawberryDark")],
            description: """
              La fraise n'est techniquement pas un fruit, mais un réceptacle floral charnu. Les "vraies" fruits sont les petits grains jaunes (akènes) qui parsèment sa peau.
              
              Elle est incroyablement riche en vitamine C (plus que l'orange !) et en flavonoïdes. C'est le symbole du renouveau printanier dans de nombreuses cultures, notamment à Wimbledon où elle est servie avec de la crème.
              """,
            nutrition: ["136 kJ (32 kcal)", "7.7g Glucides", "2g Fibres", "0.7g Protéines", "Vitamine C, B9", "Potassium"]
        ),
        Fruit(
            title: "Lemon",
            headline: "L'agrume tonifiant qui purifie et rehausse tous vos plats.",
            image: "lemon",
            gradientColors: [Color("ColorLemonLight"), Color("ColorLemonDark")],
            description: """
              Le citron est un hybride naturel originaire d'Asie. Son jus contient environ 5% d'acide citrique, ce qui lui donne ce pH très bas (2.2) et son goût intensément acide.
              
              Indispensable en cuisine pour équilibrer les saveurs grasses, il est aussi un allié ménager écologique grâce à ses propriétés antibactériennes et blanchissantes.
              """,
            nutrition: ["121 kJ (29 kcal)", "9g Glucides", "2.8g Fibres", "1.1g Protéines", "Vitamine C, B6", "Calcium"]
        ),
        Fruit(
            title: "Plum",
            headline: "Douce et juteuse, la prune est le trésor sucré de la fin d'été.",
            image: "plum",
            gradientColors: [Color("ColorPlumLight"), Color("ColorPlumDark")],
            description: """
              La prune est un fruit à noyau (drupe) qui se décline en des milliers de variétés, de la Mirabelle dorée à la Quetsche violette. 
              
              Sa peau est souvent recouverte d'une fine pellicule blanche appelée "pruine", une cire naturelle qui protège le fruit du soleil et de l'évaporation. C'est un fruit d'une grande richesse minérale.
              """,
            nutrition: ["192 kJ (46 kcal)", "11g Glucides", "1.4g Fibres", "0.7g Protéines", "Vitamine A, C, K", "Potassium"]
        ),
        Fruit(
            title: "Lime",
            headline: "La petite touche acide indispensable pour vos cocktails et ceviches.",
            image: "lime",
            gradientColors: [Color("ColorLimeLight"), Color("ColorLimeDark")],
            description: """
              Souvent confondue avec un citron pas mûr, la lime (ou citron vert) est une espèce distincte. Elle est plus riche en sucre et en acide que son cousin jaune, avec un arôme beaucoup plus floral.
              
              Elle est le pilier de la cuisine thaïlandaise et mexicaine, où son jus "cuit" les protéines du poisson dans le célèbre ceviche.
              """,
            nutrition: ["126 kJ (30 kcal)", "10g Glucides", "2.8g Fibres", "0.7g Protéines", "Vitamine C", "Fer, Calcium"]
        ),
        Fruit(
            title: "Pomegranate",
            headline: "Un fruit antique aux mille perles de jus rubis.",
            image: "pomegranate",
            gradientColors: [Color("ColorPomegranateLight"), Color("ColorPomegranateDark")],
            description: """
              La grenade est cultivée depuis l'Antiquité, de l'Iran jusqu'à l'Inde. Derrière son écorce rigide se cachent des centaines d'arilles pulpeuses et croquantes.
              
              Elle est mondialement réputée pour ses vertus cardiovasculaires et sa concentration exceptionnelle en polyphénols antioxydants. Chaque fruit contient entre 200 et 1400 graines.
              """,
            nutrition: ["346 kJ (83 kcal)", "18.7g Glucides", "4g Fibres", "1.7g Protéines", "Vitamine C, K", "Cuivre"]
        ),
        Fruit(
            title: "Pear",
            headline: "Élégante et fondante, la poire est une source de douceur infinie.",
            image: "pear",
            gradientColors: [Color("ColorPearLight"), Color("ColorPearDark")],
            description: """
              La poire appartient à la famille des Rosacées. Sa texture légèrement granuleuse provient de cellules spécifiques appelées "cellules pierreuses".
              
              Contrairement à beaucoup de fruits, elle s'affine mieux après la récolte. C'est un excellent fruit de collation car son index glycémique est bas, offrant une énergie durable.
              """,
            nutrition: ["239 kJ (57 kcal)", "15g Glucides", "3.1g Fibres", "0.4g Protéines", "Vitamine C, K", "Potassium"]
        ),
        Fruit(
            title: "Mango",
            headline: "Le roi des fruits exotiques, onctueux et gorgé de soleil.",
            image: "mango",
            gradientColors: [Color("ColorMangoLight"), Color("ColorMangoDark")],
            description: """
              La mangue est l'un des fruits les plus consommés au monde. Originaire d'Asie du Sud, elle est vénérée en Inde où elle symbolise l'amour et la générosité.
              
              Sa chair orange est une mine d'or de bêta-carotène, essentiel pour la santé de la peau et des yeux. Une mangue mûre doit céder légèrement sous la pression du doigt.
              """,
            nutrition: ["250 kJ (60 kcal)", "15g Glucides", "1.6g Fibres", "0.8g Protéines", "Vitamine A, C, E", "Magnésium"]
        ),
        Fruit(
            title: "Watermelon",
            headline: "L'hydratation ultime sous une écorce rayée.",
            image: "watermelon",
            gradientColors: [Color("ColorWatermelonLight"), Color("ColorWatermelonDark")],
            description: """
              Composée à 92% d'eau, la pastèque est le fruit roi de l'été. Elle contient du lycopène, le même pigment protecteur que dans la tomate, mais en plus grande quantité.
              
              Tout est comestible dans la pastèque : la chair, les graines (souvent grillées en Asie) et même l'écorce blanche qui peut être cuisinée comme un légume.
              """,
            nutrition: ["127 kJ (30 kcal)", "7.5g Glucides", "0.4g Fibres", "0.6g Protéines", "Vitamine A, C", "Lycopène"]
        ),
        Fruit(
            title: "Apple",
            headline: "Croquante et équilibrée, elle est la base d'une alimentation saine.",
            image: "apple",
            gradientColors: [Color("ColorAppleLight"), Color("ColorAppleDark")],
            description: """
              Il existe plus de 7 500 variétés de pommes à travers le monde. La pomme est riche en pectine, une fibre qui aide à la digestion et apporte une sensation de satiété rapide.
              
              Elle est le fruit idéal à emporter partout. Pour profiter de tous ses bienfaits, mangez la peau (bien lavée), car c'est là que se concentrent les vitamines et les antioxydants.
              """,
            nutrition: ["218 kJ (52 kcal)", "13.8g Glucides", "2.4g Fibres", "0.3g Protéines", "Vitamine C, E", "Quercétine"]
        )
    ]
}
