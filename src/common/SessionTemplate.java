package common;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionTemplate {

	private SessionTemplate() {
	
	}
	
	private static SessionTemplate sessionTemplate = new SessionTemplate();
	
	public static SessionTemplate getTemplate() {
		return sessionTemplate;
	}

	public static SqlSession getSqlSession() {
		SqlSession session = null;

		String resource = "config/configuration.xml";

		try (Reader reader = Resources.getResourceAsReader(resource)) {

			SqlSessionFactoryBuilder sqlBuilder = new SqlSessionFactoryBuilder();

			SqlSessionFactory factory = sqlBuilder.build(reader);

			session = factory.openSession(true);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return session;
	} // end getSqlSession()

} // end class
