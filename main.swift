/* Exercicio feito com a turma de Sistemas da Informação da Fiap */
import Foundation

print("-----------------------------------")
print("Informações do(a) enfermeiro(a)")
print("-----------------------------------")

// ENTRADA
print("Nome: ")
var nome = readLine()

print("Idade: ")
var idade = Int(readLine()!)

print("Horas trabalhadas: ")
var hrs = Float(readLine()!)

print("Nivel: ")
var nivel = Int(readLine()!)

print("Recebeu vacina da COVID-19? (s) = Sim | (n) = Não")
var vacina = readLine()

// INSTANCIA DA CLASSE
var enf: Enfermeira = Enfermeira(nom: nome, anos: idade, hrs: hrs, vasCovid: vacina);

print(enf);
print()

print("Salário: R$ \(enf.Salario(nivel: nivel))");
enf.Abono(horas: hrs);

print()
enf.Mensagem();