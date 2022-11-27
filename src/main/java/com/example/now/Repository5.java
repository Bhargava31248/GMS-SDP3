package com.example.now;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
public interface Repository5 extends JpaRepository<Comp,Integer> 
{
	List<Comp> findByEid(int eid);
}
