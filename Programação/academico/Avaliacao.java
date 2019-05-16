package academico;

public class Avaliacao {
	private float nota;
	private Aluno aluno;
	private Disciplina disciplina;
	
	public Avaliacao(Aluno aluno, Disciplina disciplina, float nota) {
		this.aluno = aluno;
		this.disciplina = disciplina;
		if(nota >=0 && nota <= 10) {	
			this.nota = nota;
		}else {
			throw new RuntimeException("Nota errada: " + nota);
		}
	}

	public float getNota() {
		return nota;
	}
	
	public Aluno getAluno() {
		return aluno;
	}
	
	public Disciplina getDisciplina() {
		return disciplina;
	}
}
