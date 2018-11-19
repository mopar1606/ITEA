package co.itea.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import co.itea.dto.PacienteDTO;

@ManagedBean(name = "pacienteBean")
@SessionScoped
public class PacienteBean {
	private Integer idpaciente;
	private PacienteDTO paciente;
	
	@PostConstruct
	public void init(){
		this.idpaciente = 0;
		this.paciente = new PacienteDTO();
	}
	
	public void consultarPaciente(){
		
	}

	/**
	 * @return the idpaciente
	 */
	public Integer getIdpaciente() {
		return idpaciente;
	}

	/**
	 * @param idpaciente the idpaciente to set
	 */
	public void setIdpaciente(Integer idpaciente) {
		this.idpaciente = idpaciente;
	}

	/**
	 * @return the paciente
	 */
	public PacienteDTO getPaciente() {
		return paciente;
	}

	/**
	 * @param paciente the paciente to set
	 */
	public void setPaciente(PacienteDTO paciente) {
		this.paciente = paciente;
	}
}