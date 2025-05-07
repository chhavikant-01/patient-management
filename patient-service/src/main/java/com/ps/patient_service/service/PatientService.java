package com.ps.patient_service.service;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.ps.patient_service.dto.PatientRequestDto;
import com.ps.patient_service.dto.PatientResponseDto;
import com.ps.patient_service.exception.EmailAlreadyExistsException;
import com.ps.patient_service.exception.PatientNotFoundException;
import com.ps.patient_service.mapper.PatientMapper;
import com.ps.patient_service.model.Patient;
import com.ps.patient_service.repository.PatientRepository;

@Service
public class PatientService {

  private PatientRepository patientRepository;

  // Constructor injection
  public PatientService(PatientRepository patientRepository) {
    this.patientRepository = patientRepository;
  }

  // Get all patients
  public List<PatientResponseDto> getPatients() {
    List<Patient> patients = patientRepository.findAll();

    return patients.stream().map(patient -> PatientMapper.toDto(patient)).toList();
  }

  // Create a new patient
  public PatientResponseDto createPatient(PatientRequestDto patientRequestDto) {

    if (patientRepository.existsByEmail(patientRequestDto.getEmail())) {
      throw new EmailAlreadyExistsException(
          "A patient with this email " + "already exists"
              + patientRequestDto.getEmail());
    }

    Patient newPatient = patientRepository.save(
        PatientMapper.toModel(patientRequestDto));

    return PatientMapper.toDto(newPatient);
  }

  // Update a patient
  public PatientResponseDto updatePatient(UUID id,
      PatientRequestDto patientRequestDto) {

    Patient patient = patientRepository.findById(id).orElseThrow(
        () -> new PatientNotFoundException("Patient not found with ID: " + id));

    if (patientRepository.existsByEmailAndIdNot(patientRequestDto.getEmail(),
        id)) {
      throw new EmailAlreadyExistsException(
          "A patient with this email " + "already exists"
              + patientRequestDto.getEmail());
    }

    patient.setName(patientRequestDto.getName());
    patient.setAddress(patientRequestDto.getAddress());
    patient.setEmail(patientRequestDto.getEmail());
    patient.setDateOfBirth(LocalDate.parse(patientRequestDto.getDateOfBirth()));

    Patient updatedPatient = patientRepository.save(patient);
    return PatientMapper.toDto(updatedPatient);
  }

  // Delete a patient
  public void deletePatient(UUID id) {
    patientRepository.deleteById(id);
  }

}
