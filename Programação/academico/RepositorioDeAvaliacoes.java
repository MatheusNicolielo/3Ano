package academico;

import java.util.ArrayList;
import java.util.List;

public class RepositorioDeAvaliacoes {
	public List<Avaliacao> avaliacoes = new ArrayList();
	
	public void adicionar(Avaliacao avaliacao) {
		avaliacoes.add(avaliacao);
	}
	
	public Aluno[] obterAprovados(Disciplina disciplina) {
		Aluno[] aprovados = new Aluno[50];
		Aluno[] alunos = new Aluno[50];
		float[] notas = new float[50];
		float[] media = new float[50];
		int alunoExiste;
		
		for(Avaliacao avaliacao : avaliacoes) {
			if(avaliacao.getDisciplina() == disciplina) {
				alunoExiste = 0;
				for(int contador = 0; contador < alunos.length; contador++) {
					if(alunos[contador] == avaliacao.getAluno()) {
						notas[contador]+=avaliacao.getNota();
						alunoExiste = 1;
					}
				}
				if(alunoExiste == 0) {
					alunos[alunos.length]=avaliacao.getAluno();
					notas[alunos.length]=avaliacao.getNota();
				}
				
			}
		}
		
		for(int contador = 0; contador < alunos.length; contador++) {
			media[contador]=notas[contador]/4;
			if(media[contador]>6) {
				aprovados[contador]=alunos[contador];
			}
		}
		
		
		return aprovados;
	}
}