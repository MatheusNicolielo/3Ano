package aula20190912;

public class App {
	public static void main (String[] args) {
		
		final int LIMITE = getLimite(); // CONSTANTE
			for(int i = 1; i<=LIMITE;i++) 
			{
				System.out.print("N�mero: " + i);
				if(i % 2 == 0) {
					System.out.println(" � PAR");	
				}else {
					System.out.println(" � �MPAR");
				}
			}
			
			int a = 1;
			 
			do 
			{
				System.out.print(a);
				if(a % 2 == 0) {
					System.out.println(" � PAR");	
				}else {
					System.out.println(" � �MPAR");
				}
				a++;
			}while(a<LIMITE);
			
			int b = 1;
			
			while(b<=LIMITE) 
			{
				System.out.print("While: " + b);
				if(b % 2 == 0) {
					System.out.println(" � PAR");	
				}else {
					System.out.println(" � �MPAR");
				}
				b++;
			}
	}
	/*
	public static int getLimite() {
		return 4;
	}
	*/
	public static int getLimite() 
	{
		java.util.Scanner leitor = new java.util.Scanner(System.in); // CRIAR  O OBJETO SCANNER
		System.out.print("Digite um inteiro PAR: ");
		
		int aux = leitor.nextInt(); // LER UM INTEIRO
		
		if(aux % 2 == 0) {
			return aux;
		}else 
			throw new RuntimeException("O Valor deve ser par."); //ABORTAR PROGRAMA
	}	
}
