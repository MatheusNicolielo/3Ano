package academico;

import static org.junit.Assert.*;

import org.junit.Test;

public class TesteApp {

	@Test
	public void testeInserirAlunos() {
		Aluno matheus = new Aluno("Matheus",17220712);
		Aluno carlos = new Aluno("carlos",120712);
		
		Aluno[] alunos = {
				new Aluno("Matheus",17220712),
				new Aluno("carlos",120712)
		};
		
		for(Aluno aluninhos : alunos) {
			System.out.println("Nome: " + aluninhos.getNome() + " R.A: " + aluninhos.getRa());
		}
		
		assertEquals(2, alunos.length);
		
	}
	
	@Test
	public void testeInserirDisciplina() {
		Disciplina d1 = new Disciplina("Programação");
		assertEquals("Programação", d1.getNome());
	}
	
	@Test
	public void testeInserirAvaliacao() {
		Aluno a1 = new Aluno("Matheus",17220712);
		Disciplina d1 = new Disciplina("Programação");
		Avaliacao avaliacao1 = new Avaliacao(a1,d1,8);
		
		assertEquals("Programação", avaliacao1.getDisciplina().getNome());
		assertEquals("Matheus",avaliacao1.getAluno().getNome());
		assertEquals(8,avaliacao1.getNota(),0.001);
	}
	
	@Test
	public void testeAprovados() {
		Aluno a1 = new Aluno("Matheus",17220712);
		Disciplina d1 = new Disciplina("Programação");
		Avaliacao avaliacao1 = new Avaliacao(a1,d1,8);
		
		RepositorioDeAvaliacoes rep1 = new RepositorioDeAvaliacoes();
		rep1.adicionar(avaliacao1);
		
		Aluno[] aprovados = null;
		
		aprovados = rep1.obterAprovados(d1);
		
		System.out.println(aprovados);
		
	}

}
