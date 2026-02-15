module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- 1. Ejercicios Simples


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 f1 f2 f3 =
    f1 + f2 + f3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- 2. Records (Lenguajes)


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List Language
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "Javascript", releaseYear = 1995, currentVersion = "ES6" }
    ]


languageNames : List Language -> List String
languageNames list =
    List.map .name list



-- 3. Records (Usuarios)


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        list



-- 4. Aliases (Videojuegos)


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


games : List Videogame
games =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 100, genres = [ "Action" ] }
    , { title = "Zelda", releaseYear = 1998, available = True, downloads = 200, genres = [ "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



-- 5. Ejercicio HTML (Computer)


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }



-- AQUÍ ESTÁ EL CAMBIO SOLICITADO:


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Katana"
    , brand = "MSI"
    , screenSize = "17''"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
