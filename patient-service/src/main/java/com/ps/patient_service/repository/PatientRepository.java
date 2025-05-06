package com.ps.patient_service.repository;

import com.ps.patient_service.model.Patient; // patient entity
import org.springframework.data.jpa.repository.JpaRepository; // JPA repository interface
import org.springframework.stereotype.Repository; 

import java.util.UUID;

@Repository
public interface PatientRepository extends JpaRepository<Patient, UUID> {

}
