package co.itea.bl;

import co.itea.dao.PacientesDAO;
import co.itea.dto.PacienteDTO;
import co.itea.ejb.BaseEJB;

public class PacientesBL extends BaseEJB{
	
	/**
	 * Consulta la informacion de un paciente por Id de registro.
	 * @param idpaciente
	 * @return
	 * @throws Exception
	 */
	public PacienteDTO getPacienteById(Integer idpaciente) throws Exception {
		PacientesDAO pacientesDAO = new PacientesDAO(dc_itea);
		return pacientesDAO.getPacienteById(idpaciente);
	}
}