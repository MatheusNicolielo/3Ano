package aula20190409.listaDinamica;

public class App {
	public static void main(String[] args) {
		ListaDinamica<String> nomes = new ListaDinamica();
		
		nomes.adicionar("Teste");
		nomes.adicionar("C");
		nomes.adicionar("D");
		nomes.adicionar("E");
		
		System.out.println(nomes.obterTamanho()); //1
	}
}
