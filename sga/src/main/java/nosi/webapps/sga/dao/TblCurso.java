package nosi.webapps.sga.dao;

import javax.validation.constraints.Size;
import nosi.base.ActiveRecord.BaseActiveRecord;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.NotBlank;
import javax.persistence.Table;
import javax.persistence.Entity;

/**
 * @author: Nositeste 06-02-2023
*/

@Entity
@Table(name = "tbl_curso", schema = "public")
@NamedQuery(name = "TblCurso.findAll", query = "SELECT t FROM TblCurso t")
public class TblCurso extends BaseActiveRecord<TblCurso> {

	private static final long serialVersionUID = 1L;

	// Change Integer type to BigDecimal if the number is very large!

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, updatable = false)
 	private Integer id;
	@NotBlank
	@Size(min = 1, max = 10)
	@Column(name = "code")
	private String code;
	@NotBlank
	@Size(min = 1, max = 250)
	@Column(name = "description")
	private String description;
	@NotBlank
	@Size(min = 1, max = 1)
	@Column(name = "status")
	private String status;

	public Integer getId() { 
		return this.id;
	}

	public void setId(Integer id) {
		 this.id = id;
	}

	public String getCode() { 
		return this.code;
	}

	public void setCode(String code) {
		 this.code = code;
	}

	public String getDescription() { 
		return this.description;
	}

	public void setDescription(String description) {
		 this.description = description;
	}

	public String getStatus() { 
		return this.status;
	}

	public void setStatus(String status) {
		 this.status = status;
	}

}