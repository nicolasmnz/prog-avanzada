#include <stdio.h>

int main(){
	int x1, x2;
	char operation;
	
	printf("Inserta el numero 1: \n");
	scanf("%d",&x1);
	
	printf("Inserta el numero 2: \n");
	scanf("%d", &x2);

	printf("Que operación desea realizar? \n");
	printf("(+): Suma, (-): Resta \n");
	printf("Ingrese el caracter entre parentesis () \n");
	scanf(" %c", &operation); // Notar el espacio entre " y el scanf

	int resultado;
	
	if(operation == '+'){
		resultado = x1 + x2;
	}
	else if(operation == '-'){
		resultado = x1 - x2;
	}
	else{
		operation = -9999;
	}

	printf("El resultado es: %d\n", resultado);

	return 0;
}
