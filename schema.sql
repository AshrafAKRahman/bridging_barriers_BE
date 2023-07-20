CREATE TABLE mentees (
    mentee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
    email VARCHAR
    dob DATE
    first_name TEXT
    last_name TEXT
    mobile_number INT
    subscribe BOOLEAN 
    privacy BOOLEAN
    location VARCHAR
    ethnic_heritage VARCHAR
    gender VARCHAR

)

CREATE TABLE education_details  
    qualification_id INT GENERATED ALWAYS AS IDENTITY
    mentee_id INT REFERENCES mentees (mentee_id)
    school_name VARCHAR
    sixth_form_college VARCHAR
    ucas INT
    studying_gcse VARCHAR
    qualification VARCHAR   
    subjects VARCHAR
    status VARCHAR

CREATE TABLE sector_interests
    sector_id INT GENERATED ALWAYS AS IDENTITY
    mentee_id INT REFERENCES mentees (mentee_id)
    finacial_services BOOLEAN
    investment_banking BOOLEAN
    creative BOOLEAN
    government BOOLEAN
    marketing_media BOOLEAN
    hr BOOLEAN
    real_esate BOOLEAN
    engineering BOOLEAN
    law BOOLEAN
    other BOOLEAN

CREATE TABLE circumstances
    circumstance_id INT GENERATED ALWAYS AS IDENTITY
    mentee_id INT REFERENCES mentees (mentee_id)
    local_authority_care BOOLEAN
    single_parent_household BOOLEAN
    disability BOOLEAN
    parents_uni_status BOOLEAN
    refugee_asylum BOOLEAN
    free_school_meals BOOLEAN
    family_caring BOOLEAN
    parent_carer BOOLEAN




    

