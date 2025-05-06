package com.ps.patient_service.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ps.patient_service.dto.PatientResponseDto;
import com.ps.patient_service.mapper.PatientMapper;
import com.ps.patient_service.model.Patient;
import com.ps.patient_service.repository.PatientRepository;

@Service
public class PatientService {

    private PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    public List<PatientResponseDto> getPatients() {
        List<Patient> patients = patientRepository.findAll();
    
        return patients.stream().map(patient -> PatientMapper.toDto(patient)).toList();
      }


}
