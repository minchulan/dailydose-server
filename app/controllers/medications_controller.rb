class MedicationsController < ApplicationController

    # GET all route 
    get '/medications' do  #this is all the meds
        # render all medications as JSON  
        Medication.all.to_json
    end 

    # GET one route
    get '/medications/:id' do
        find_medication
        medication_to_json
    end

    # Create route
    post '/medications' do 

        @medication = Medication.new(params)
            if @medication.save
            # return object as JSON if saved
            medication_to_json
            else  
            # return error messages if not saved 
            medication_error_messages
        end 
    end 

    # Update one route 
    patch '/medications/:id' do 
        find_medication
        if @medication.update(params)
            medication_to_json
        else 
            # return error messages if not saved 
            medication_error_messages
        end 
    end 

    # Delete one route
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


    private #private means only accessible inside this class
        def find_medication
            @medication = Medication.find_by_id(params[:id]) #defined within all instance methods
            # medication = Medication.find_by_id(params[:id]) # [no @ sign] defined within just this method
        end 

        def medication_to_json
            @medication.to_json
        end 

        def medication_error_messages
            { errors: @medication.errors.full_messages.to_sentences }.to_json 
        end  

        def find_patient 
            @patient = Patient.find_by_id(params["patient_id"])
        end 
end 




    #line 2: get ALL restful route: this is our index page.
    #line 7: get ONE restful route: this is our show page.
    #line12: create restful route:
    #line 5: grabbing all the Medications and converting to JSON. also, including the Patients associated with the Medications.
    # line 5 alternative - if we only want all of the Medication's ID and title:
    # Medication.all.to_json(include: [patient: {only: [:id, :title]}], :med)
    # line 17: we're sending a request to our backend to this endpoint. We're going to create a new medication if it saves (runs through validation), presence is true then it's going to save, then it's going to return the medication that includes its own patient. Otherwise it's going to use the full message from the medication back as JSON. That way we know how to handle it when it comes back as data in our fetch request, and we can display error messages if we want to.

    #line 34: we want to use find_by_id because it returns nil. then we can use that for error handling [lines 37-43]

    #note: whenever we create a REQUEST, it's going to create a new instance of medications controller. It's going to instantiate medications controller, and then it's going to run one of the RESTful Route methods. And it's going to do that for every request. This leads to instance variables in the controller, because whenever it creates a new instance, its going to have access to instance variables. Which means if we save an instance variable, it'll be known throughout that instance (or in other words throughout that one request).

    #line 19: this gives us a new param. params patient_id. This means we can say @patient = Patient.fnd_by_id(params["patient_id"]). If i wanted to create a medication for Minchul An, then I could say /patients/1 and make a post request to that. Then what I could do is @medication = @patient.books.build(params). This shows ownership for the medication that we're creating. And since every medication must belong to a patient, we can absolutely do this.

    #line 7 is also a nested route



    # nested route: 
    # post '/patients/:patient_id/medications' do
    #     find_patient
    #     @medication = @patient.medications.build(params)
    #     if @medication.save
    #         # return object as JSON if saved
    #         medication_to_json
    #     else  
    #         # return error messages if not saved 
    #         medication_error_messages
    #     end 
    # end 

        #nested route:
    # get '/patients/:patient_id/medications' do  #this is the meds for the specific patient
    #     find_patient
    #     @patient.medications.to_json
    # end 