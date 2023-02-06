package nosi.webapps.sga.dao;

import javax.persistence.CascadeType;
import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import java.util.List;
import javax.persistence.ForeignKey;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.xml.bind.annotation.XmlTransient;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author: Nositeste 06-02-2023
*/

@Entity
@Table(name = "tbl_aluno_disciplina", schema = "public")
@NamedQuery(name = "TblAlunoDisciplina.findAll", query = "SELECT t FROM TblAlunoDisciplina t")
public class TblAlunoDisciplina extends BaseActiveRecord<TblAlunoDisciplina> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
 	private Integer id;
	@NotNull
	@ManyToOne
	@JoinColumn(name = "id_aluno", foreignKey = @ForeignKey(name = "fk_aluno_disciplina"))
	private TblAluno idAluno;
	@NotNull
	@ManyToOne
	@JoinColumn(name = "id_disciplina", foreignKey = @ForeignKey(name = "fk_disciplina_aluno"))
	private TblDisciplina idDisciplina;
	@NotNull
	@ManyToOne
	@JoinColumn(name = "id_curso", foreignKey = @ForeignKey(name = "fk_curso_uk"))
	private TblCurso idCurso;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "idCurso")
	private List<TblAlunoDisciplina> tblalunodisciplinaList;

	public Integer getId() { 
		return this.id;
	}

	public void setId(Integer id) {
		 this.id = id;
	}

	public TblAluno getIdAluno() { 
		return this.idAluno;
	}

	public void setIdAluno(TblAluno idAluno) {
		 this.idAluno = idAluno;
	}

	public TblDisciplina getIdDisciplina() { 
		return this.idDisciplina;
	}

	public void setIdDisciplina(TblDisciplina idDisciplina) {
		 this.idDisciplina = idDisciplina;
	}

	public TblCurso getIdCurso() { 
		return this.idCurso;
	}

	public void setIdCurso(TblCurso idCurso) {
		 this.idCurso = idCurso;
	}

	@XmlTransient
	public List<TblAlunoDisciplina> gettblalunodisciplinaList() {
		return tblalunodisciplinaList;
	}
	public void settblalunodisciplinaList(List<TblAlunoDisciplina> tblalunodisciplinaList) {
		this.tblalunodisciplinaList = tblalunodisciplinaList;
	}

}