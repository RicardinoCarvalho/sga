package nosi.webapps.sga.dao;

import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.validation.constraints.Size;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotBlank;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author: Nositeste 06-02-2023
*/

@Entity
@Table(name = "tbl_avaliacao", schema = "public")
@NamedQuery(name = "TblAvaliacao.findAll", query = "SELECT t FROM TblAvaliacao t")
public class TblAvaliacao extends BaseActiveRecord<TblAvaliacao> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
 	private Integer id;
	@NotNull
	@ManyToOne
	@JoinColumn(name = "id_aluno_disciplina", foreignKey = @ForeignKey(name = "fk_aluno_disciplina"))
	private TblAlunoDisciplina idAlunoDisciplina;
	@NotNull
	@Column(name = "nota")
	private Integer nota;
	@NotBlank
	@Size(min = 1, max = 50)
	@Column(name = "classificao")
	private String classificao;

	public Integer getId() { 
		return this.id;
	}

	public void setId(Integer id) {
		 this.id = id;
	}

	public TblAlunoDisciplina getIdAlunoDisciplina() { 
		return this.idAlunoDisciplina;
	}

	public void setIdAlunoDisciplina(TblAlunoDisciplina idAlunoDisciplina) {
		 this.idAlunoDisciplina = idAlunoDisciplina;
	}

	public Integer getNota() { 
		return this.nota;
	}

	public void setNota(Integer nota) {
		 this.nota = nota;
	}

	public String getClassificao() { 
		return this.classificao;
	}

	public void setClassificao(String classificao) {
		 this.classificao = classificao;
	}

}