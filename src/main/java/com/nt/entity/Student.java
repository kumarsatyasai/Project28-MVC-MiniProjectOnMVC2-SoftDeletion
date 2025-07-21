package com.nt.entity;

import java.io.Serializable;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "sdstudent")
@SQLDelete(sql="update sdstudent set status = 'inactive' where sno = ?")
@SQLRestriction(value = "status <> 'inactive'")

public class Student implements Serializable{
	
	@Id
	@SequenceGenerator(name="gen1", sequenceName = "S_SEQ", initialValue = 6, allocationSize = 1)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	
	private Integer sno;
	
	@NonNull
	@Column(length = 50)
	private String sname;
	
	@NonNull
	private Integer sage;
	
	@NonNull
	@Column(length = 1)
	private String sgender;
	
	@Column(length=20)
	private String status = "active";
	
	
	

}
