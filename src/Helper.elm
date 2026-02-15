module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)
import Html.Attributes exposing (style)



-- ==========================================
-- Simple Exercises
-- ==========================================
-- Create a function "add2" that adds two integers


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-- Create a function "add3" that adds three floats


add3 : Float -> Float -> Float -> Float
add3 f1 f2 f3 =
    f1 + f2 + f3



-- Create a function "calc" that receives three inputs


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- ==========================================
-- Records Exercises 1.0 (Programming Languages)
-- ==========================================
-- 1.0 Definition of the record type alias


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }



-- 1.1 Create a list with at least two programming languages


languages : List Language
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "Python", releaseYear = 1991, currentVersion = "3.12" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]



-- 1.2 Create a function "languageNames" that generates a String list with only the names


languageNames : List Language -> List String
languageNames langList =
    List.map .name langList



-- ==========================================
-- Records Exercises 2.0 (Users)
-- ==========================================
-- 2.0 Definition of the record for user


type alias User =
    { name : String
    , uType : String
    }



-- 2.1 Create a list of users


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    , { name = "Mariana", uType = "Student" }
    ]



-- 2.2 Create a function "onlyStudents"
-- Returns name if Student, empty string if Professor


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        userList



-- ==========================================
-- Aliases Exercise 3.0 (Videogames)
-- ==========================================
-- 3.0 Define a record for games aliased "Videogame"


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }



-- 3.1 Create a list with at least two videogames


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "The Legend of Zelda: Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 10000000
      , genres = [ "Action", "Adventure" ]
      }
    ]



-- 3.2 Create a function "getVideogameGenres"


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games



-- ==========================================
-- Html Exercise (Computer)
-- ==========================================
-- Definition of the Computer record


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }



-- Create a variable "myLaptop"


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Pro"
    , brand = "Apple"
    , screenSize = "14 inches"
    }



-- Create a variable "main" that renders the HTML


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

        -- Visualización de resultados de los ejercicios anteriores para debug (opcional)
        , div [ style "margin-top" "20px", style "border-top" "1px solid #ccc" ]
            [ h1 [] [ text "Resultados de pruebas (Debug)" ]
            , ul []
                [ li [] [ text ("add2 2 3 = " ++ String.fromInt (add2 2 3)) ]
                , li [] [ text ("add3 2 3 -10 = " ++ String.fromFloat (add3 2 3 -10)) ]
                , li [] [ text ("calc 5 2 (//) = " ++ String.fromInt (calc 5 2 (//))) ]
                , li [] [ text ("Nombres de lenguajes: " ++ String.join ", " (languageNames languages)) ]
                ]
            ]
        ]
