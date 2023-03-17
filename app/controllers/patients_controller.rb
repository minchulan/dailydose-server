class PatientsController < ApplicationController
    get '/patients' do
        @patients = Patient.all.to_json(include: [:medications])
    end 

    get '/patients/:id' do
        find_patient
        patient_to_json
    end 

    post '/patients' do 
        @patient = Patient.new(params)
        if @patient.save
            patient_to_json
        else  
            patient_error_messages
        end 
    end 

    patch '/patients/:id' do 
        find_patient
        if @patient.update(params)
            patient_to_json
        else 
            patient_error_messages
        end 
    end 

    delete '/patients/:id' do 
        find_patient
        if @patient
            @patient.destroy 
            @patient.to_json(include: [:medications])
        else  
            { errors: ["Patient Doesn't Exist"] }.to_json
        end 
    end 


    private
        def find_patient
            @patient = Patient.find_by_id(params[:id])
        end 

        def patient_to_json
            @patient.to_json(include: [:medications])
        end 

        def patient_error_messages
            { errors: @patient.errors.full_messages }.to_json 
        end  
end 