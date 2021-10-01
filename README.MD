# EstudoHaskell :man_student:

## Características

* **Códigos concisos e declarativos**: O programador declara o que ele quer ao invés de escrever um passo-a-passo. Programas em Haskell chegam a ser dezenas de vezes menores que em outras linguagens.

* **Imutabilidade**: Não existe um conceito de variável, apenas nomes e declarações. Uma vez que um nome é declarado com um valor, ele não pode sofrer alterações. Como consequência não precisamos nos preocupar se uma variável foi passada como referência ou não. Exemplo:
~~~haskell
x = 1.0
x = 2.0 -- ERRO!
~~~
* **Funções recursivas**: Com a imutabilidade, o conceito de laços de repetição também não existe em linguagens funcionais. (Por quê?) Eles são implementados através de funções recursivas. Exemplo:
~~~haskell
f = 0
f n = 2 * f (n - 1)
print(f 10)
~~~
* **Funções de alta ordem**: Funções podem receber funções como parâmetros. Isso permite definir funções genéricas, compor duas ou mais funções e definir linguagens de domínio específicos. Exemplo :
~~~haskell
print (aplique dobro [1,2,3,4])
-- [2,4,6,8]
~~~
* **Tipos polimórficos**: permite definir funções genéricas que funcionam para classes de tipos. Por exemplo, a função fst retorna o primeiro elemento de uma tupla, os tipos dos elementos não importam.
~~~haskell
fst :: (a,b) -> a
fst (x,y) = x
~~~
* **Avaliação preguiçosa**: ao aplicar uma função, o resultado será computado apenas quando requisitado. Isso permite evitar computações desnecessárias, estimula uma programação modular e permite estruturas de dados infinitas. Exemplo:
~~~haskell
listaInf = [1..]
print (take 10 listaInf)
-- [1,2,3,4,5,6,7,8,9,10]
~~~
* **Funções**: Em Haskell, a aplicação de função é definida como:
O nome da função...seguido dos parâmetros separados por espaço.
A aplicação de funções tem a maior precedência.
~~~haskell
f a b       -- f(a,b)
f a b + c*d -- f(a,b) + c*d
~~~

* A tabela abaixo contém alguns contrastes entre a notação matemática e haskell:

| Matemática | Haskell   |
|------------|-----------|
| f(x)       | f x       |
| f(x,y)     | f x y     |
| f(g(x))    | f (g x)   |
| f(x,g(y))  | f x (g y) |
| f(x)g(y)   | f x * g y |

## Tipos de dados 

* Um tipo é uma coleção de valores relacionados entre si. Em haskell os tipos de dados são defindos pela notação: 
~~~haskell
v :: T --v define um valor do tipo T
False :: Bool
True :: Bool
10 :: Int
~~~
* String, Boolean, Char, Int, Integer(inteiros de precisão arbitrária), Float, Double são os tipos básicos da linguagem.

### Listas

* Listas são sequências de elementos do mesmo tipo agrupados por colchetes e separados por vírgula
~~~haskell
[1,2,3,4]
[12]
~~~

### Tuplas

* Tuplas são sequências finitas de componentes, contendo zero ou mais tipos diferentes:
~~~haskell
(True, False) :: (Bool, Bool)
(1.0, "Sim", False) :: (Double, String, Bool)
~~~

### Funções

* Funções são mapas de argumentos de um tipo para resultados em outro tipo. O tipo de uma função é escrito como **T1 -> T2**, ou seja, o mapa do tipo T1 para o tipo T2: 
~~~haskell
not :: Bool -> Bool
even :: Int -> Bool
~~~
* Para escrever uma função com múltiplos argumentos, basta separar os argumentos pela **->**, sendo o último o tipo de retorno:
~~~haskell
soma :: Int -> Int -> Int
soma x y = x + y

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z
~~~
* Exemplos de funções em haskell
~~~haskell
impar :: Integral a => a -> Bool
impar n = n `mod` 2 == 1

quadrado :: Num a => a -> a
quadrado x = x * x

quadradoMais6Mod9 :: Integral a => a -> a
quadradoMais6Mod9 x = (x + 6) `mod` 9

raizes2Grau :: Floating a => a -> a -> a -> (a,a)
raizes2Grau a b c = (((-b) + sqrt(b*b - 4 * a * c)) / (2*a),((-b) - sqrt(b*b - 4 * a * c)) / (2*a))
~~~
