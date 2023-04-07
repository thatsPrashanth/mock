package pgms;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

@Component
public class UserDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(User user) {
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
	}

	public void remove(String user_mail) {
		User user = entityManager.find(User.class, user_mail);
		entityTransaction.begin();
		entityManager.remove(user);
		entityTransaction.commit();
	}

	public List<User> fetchAll() {
		Query query = entityManager.createQuery("select data from User data");
		List<User> user = query.getResultList();
		return user;
	}

}
