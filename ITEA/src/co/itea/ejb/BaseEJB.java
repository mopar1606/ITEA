package co.itea.ejb;

import javax.annotation.Resource;
import javax.sql.DataSource;

public class BaseEJB {
	@Resource(mappedName = "dc_itea")
	protected DataSource dc_itea;
}