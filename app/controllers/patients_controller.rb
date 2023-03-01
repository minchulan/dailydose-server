class PatientsController < ApplicationController

    # GET all route 
    get '/patients' do
    # render all patients as JSON  
    Patient.all.to_json
    end 

    # GET one route
    get '/patients/:id' do
        find_patient
        patient_to_json
    end 

    # Create route
    post '/patients' do 
        # create the medication
        @patient = Patient.new(params)
        if @patient.save
            # return object as JSON if saved
            patient_to_json
        else  
            # return error messages if not saved 
            patient_error_messages
        end 
    end 

    # Update one route
    patch '/patients/:id' do 
        find_patient
        if @patient.update(params)
            patient_to_json
        else 
            # return error messages if not saved 
            patient_error_messages
        end 
    end 

    # Delete one route
    delete '/patients/:id' do 
        # deletes the patient
        find_patient
        if @patient
            @patient.destroy 
            @patient.to_json
        else  
            { errors: ["Patient Doesn't Exist"] }.to_json
        end 
    end 


    private #private means only accessible inside this class
        def find_patient
            @patient = Patient.find_by_id(params[:id]) #defined within all instance methods
            # patient = Patient.find_by_id(params[:id]) # [no @ sign] defined within just this method
        end 

        def patient_to_json
            @patient.to_json
        end 

        def patient_error_messages
            { errors: @patient.errors.full_messages }.to_json 
        end  
end 




    #note: whenever we create a REQUEST, it's going to create a new instance of patients controller. It's going to instantiate patients controller, and then going to run one of the RESTful Route methods. And it's going to do that for every request. This leads to instance variables in the controller, because whenever it creates a new instance, its going to have access to instance variables. Which means if we save an instance variable, it'll be known throughout that instance (or in other words throughout that one request).