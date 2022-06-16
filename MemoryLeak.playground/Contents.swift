import UIKit

// MEMORY LEAK

class Passport{
    let citizenship: String
    var owner: Human?
    
    init(citizenship: String){
        self.citizenship = citizenship
        print("\(citizenship) passport generated")
    }
    deinit{
        print("\(citizenship) passport is removed from RAM")
    }
}

class Human{
    let name: String
    var passport: Passport?
    
    init(name: String){
        self.name = name
        print("\(name) generated")
    }
    deinit{
        print("\(name) is removed from RAM")
    }
}

Passport(citizenship: "Turkey")
Human(name: "Özcan")

// Buraya kadar çıktımız şu şekilde :
    //Turkey passport generated
    //Özcan generated
    //Özcan is removed from RAM
    //Turkey passport is removed from RAM

var jack: Human? = Human(name: "jack")
var passport: Passport? = Passport(citizenship: "The Mars")

// Buraya kadar çıktımız şu şekilde :

    //Turkey passport generated
    //Özcan generated
    //jack generated
    //The Mars passport generated
    //Özcan is removed from RAM
    //Turkey passport is removed from RAM

        // Dikkat edersek strong type bir değişkene atadığımız referansların objeleri deinit olmadılar.
        // Peki deallocate etmek yani memory'den silmek istersek ne yapmamız gerekmektedir?
            // nil ataması yapabiliriz

//jack = nil
//passport = nil

// Buraya kadar çıktımız şu şekilde :

    //Turkey passport generated
    //Özcan generated
    //jack generated
    //The Mars passport generated
    //Özcan is removed from RAM
    //Turkey passport is removed from RAM
    //jack is removed from RAM
    //The Mars passport is removed from RAM


jack?.passport = passport // Referans countumuz 2'ye çıktı
passport?.owner = jack // Referans countumuz 2'ye çıktı

jack = nil
passport = nil

// Buraya kadar çıktımız şu şekilde :

    //Turkey passport generated
    //Özcan generated
    //jack generated
    //The Mars passport generated
    //Özcan is removed from RAM
    //Turkey passport is removed from RAM
        
        // Referans değeri ikiye çıkan objelere nil değeri atarsak memory'den bunları silemiyoruz. // Bu duruma retain cycle kaynaklı memory leak denir.

// Bu durumanda kurtulmak için weak erişim belirleyicisini kullanabiliriz.
