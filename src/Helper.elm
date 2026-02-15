module Helper exposing (..)

import Html exposing (..)



--Type annotation


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 val1 val2 val3 =
    val1 + val2 + val3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--Programas o lenguages


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



-- Estudiante


users : List { name : String, uType : String }
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        list


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


games : List Videogame
games =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 1
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of time"
      , releaseYear = 1998
      , available = True
      , downloads = 2
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Katana GF66 11UE-245XES"
    , brand = "MSI"
    , screenSize = "15.6"
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
