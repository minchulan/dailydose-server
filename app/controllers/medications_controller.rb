class MedicationsController < ApplicationController
    get '/medications' do
        Medication.all.to_json(include: [:patient])
    end 

    get '/patients/:patient_id/medications' do 
        find_patient
        @patient.medications.to_json(include: [:patient])
    end 

    get '/medications/:id' do
        find_medication
        medication_to_json
    end

    post '/medications' do 
        @medication = Medication.new(params)
            if @medication.save
            medication_to_json
            else  
            medication_error_messages
        end 
    end 

    post '/patients/:patient_id/medications' do 
        find_patient
        @medication = @patient.medications.build(params)
        if @medication.save
            medication_to_json
        else
            medication_error_messages
        end 
    end 

    patch '/medications/:id' do 
        find_medication
        if @medication.update(params)
            medication_to_json
        else 
            medication_error_messages
        end 
    end 

    delete '/medications/:id' do 
        # deletes the medication
        find_medication
        if @medication
            @medication.destroy 
            @medication.to_json
        else  
            { errors: ["Medication Doesn't Exist"] }.to_json
        end 
    end 


    private
        def find_medication
            @medication = Medication.find_by_id(params[:id])
        end 

        def medication_to_json
            @medication.to_json(include: [:patient])
        end 

        def medication_error_messages
            { errors: @medication.errors.full_messages.to_sentences }.to_json 
        end  

        def find_patient 
            @patient = Patient.find_by_id(params["patient_id"])
        end 
end 