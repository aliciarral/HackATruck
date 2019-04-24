//: Playground - noun: a place where people can play
/*
import Cocoa

var str = "Hello, playground"

func fib (numero : Int) -> Int{
    
    if numero == 1 || numero == 2{
        return 1
    }
    else{
        return fib(numero-1) + fib(numero-2)
}
}

//desenvolva um código que dado um número qualquer o código diga se é um número de armstrong ou não

func tamanho (numero: Int) -> Int{
    if (numero === 0){
        return 1 //numero zero é um algarismo
    }
    else {
        var c: Int
        c = 0
    
        for c in numero{
            c = c + 1
        }
        return c //retorna quantos algarismos tem no numero
    }
}

func verificaArmstrong (numero: Int) -> Bool{

var n = tamanho(numero)

    

}
*/


//Questão 3
class MaquinaDeKaraoke {
    
    var listaDeMusicas : [String] = [] //iniciei a lista vazia
    
    func insereMusica (musica: String){
        
        let posicao = listaDeMusicas.index(of: musica) //estou varrendo a lista para procurar a posicao dessa musica nela
        if posicao == nil{ //se a música não existir na lista o valor da posicao dela é nulo
            listaDeMusicas.append(musica)
        }
        else{
            print("Música já existia na lista de músicas!")
        }
    }
    
    func removeMusica (musica : String){
        
        let posicao = listaDeMusicas.index(of: musica)
        if posicao == nil {
            print("Música inexistentena lista.")
            
        } else {
            listaDeMusicas.remove(at: posicao!)
        }
        
    }
    
}

//Questão 4

/*func ordenaNumeros (lista: [Int]) -> Int {

    for n in lista{
        
        if lista.n > lista.n+1{
            var troca = lista.n+1
            var change = lista.n
            lista.n = troca
            lista.n+1 = change
        }
    }
    
    print(lista)
}
*/


















    


