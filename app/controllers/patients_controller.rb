class PatientsController < ApplicationController
    get '/patients' do
        @patients = Patient.all.order(:first_name)
        @patients.to_json(include: [:medications])
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
        if @patient.update(first_name:params[:first_name], last_name:params[:last_name], birthday:params[:birthday], allergies:params[:allergies], email:params[:email], phone_number:params[:phone_number], address:params[:address])
            patient_to_json
        else 
            patient_error_messages
        end 
    end 

    delete '/patients/:id' do 
        find_patient
        if @patient
            @patient.destroy 
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