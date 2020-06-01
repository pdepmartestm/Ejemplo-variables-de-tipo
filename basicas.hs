--import Text.Show.Functions

data Persona = UnaPersona{
    nombre::String,
    edad:: Int,
    gusto:: Int -> Bool
} 

--data Arbol = Nada | Nodo Int Arbol Arbol
data Arbol a = Nada | Nodo a (Arbol a) (Arbol a)

recorrer::Arbol a-> [a]
recorrer Nada = []
recorrer (Nodo valor izq der) = recorrer izq ++ [valor] ++ recorrer der

instance Show Persona where
    show (UnaPersona n e g) = "Soy " ++ n ++ " y tengo " ++ show e

instance Eq Persona where
    (==) (UnaPersona n _ _ ) (UnaPersona on _ _) = n == on




basica::a->a
basica x = x

noTanBasica:: Num a => a -> a
noTanBasica x = x + 1

noTanBasica':: Fractional a => a -> a
noTanBasica' x = x / 2

sigueSiendoBasica::[a]->[a]
sigueSiendoBasica (x:xs) = xs

otraMas:: Ord a => a -> a -> Bool
otraMas x y = x > y 

laUltima:: Eq a => a -> a -> String
laUltima x y 
  | x == y = "todo bien"
  | otherwise = "todo mal"

