package com.example.now;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Repository2 extends JpaRepository<User,Integer>{
	
	List<User> findByEid(int eid);
}

