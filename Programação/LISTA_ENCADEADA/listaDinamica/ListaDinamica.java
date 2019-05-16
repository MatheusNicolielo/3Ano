package aula20190409.listaDinamica;

public class ListaDinamica<TIPO_DO_ELEMENTO>{
	private Elemento primeiro;
	
	public void adicionar(TIPO_DO_ELEMENTO elemento) {
		Elemento novoElemento = new Elemento(elemento);	
		if(this.primeiro == null) {    
			this.primeiro = novoElemento;
			novoElemento.proximo = null;
		}else {
			inserir(novoElemento, primeiro);
		}
	}
	
	public void inserir(Elemento novoElemento,Elemento auxiliar) {
			if(auxiliar.proximo == null) {
				auxiliar.proximo = novoElemento;
				novoElemento.proximo = null;
			}else {
				inserir(novoElemento,auxiliar.proximo);
			}
		
	}
	
	public int obterTamanho() {
		int tamanho = 0;
		if(primeiro == null) {
			return tamanho;
		}
		tamanho++;
		Elemento aux = primeiro;
		while(aux.proximo != null) {
			aux = aux.proximo;
			tamanho++;
		}
		return tamanho;
	}
	
	public TIPO_DO_ELEMENTO pegar(int posicao) {
		if(posicao < 0 || posicao > this.obterTamanho()-1) {
			throw new RuntimeException("Posição fora do intervalo da lista: " + posicao);
		}
		int contador = 0;
	}
	
	private class Elemento{
		private TIPO_DO_ELEMENTO valor;
		private Elemento proximo;
		public Elemento(TIPO_DO_ELEMENTO valor){
			this.valor = valor;
		}
	}
}
