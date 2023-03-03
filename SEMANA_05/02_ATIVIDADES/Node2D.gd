extends Node2D

var teste = false
var valor = 0
var numero = 0 #"numero" estava com acento
var lista = [] #não estava como variável
var nome

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #"numero" com acento e faltou $
	nome = $LineEdit2.text #nome não estava como variável e faltou 2 em LineEdit

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #numero estava maiúsculo
		lista.append(numero) #numero estava maiúsculo
	$Label3.text = ", ".join(lista) #mostrar lista
	
var cont = 0
func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	for i in lista.size():
		if lista[i]%2 ==0:
			cont = cont #para numero par
		else:
			cont +=1 #para numero impar
	if cont !=0:
		$Label4.text = nome + "baldo"
	else:
		$Label4.text = nome
		#se numero for impar aparacer baldo no final do nome coletado
#	
		
		
#var teste = false
#var valor = 0
#var numero = 0 #acento em "numero"
#var lista = [] #não estava como variável
#var nome 
#
#func _on_Button_pressed():
#	#Coletando dados inseridos pelo usuário
#	numero = int($LineEdit.text) #acento em número e faltou $
#	$LineEdit.text = str(numero) #não estava como variável
#
#
#
#func _on_Button2_pressed():
#	#Incrementando o número inserido pelo usuário
#	for i in range(10):
#		numero+=i #estava em maiúsculo
#		lista.append(numero) #estava em maiúsculo
#	$Label.text = str(numero) #faltava str
#
#var cont
#var i
#
#func _on_Button3_pressed():
#	#Mudando o nome do usuário de acordo com os dados da lista
#	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
#	while(len(lista)):
#		cont=0 #não estava como variável
#		i=0 #não estava como variável
#		if(lista[i]%2==1):
#			cont+=1
#		if(cont!=0):
#			nome = nome+"baldo"
#		$Label2.text = nome
