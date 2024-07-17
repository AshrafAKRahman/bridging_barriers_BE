-- CREATE TABLE mentees (
--     mentee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
--     email VARCHAR
--     dob DATE
--     first_name TEXT
--     last_name TEXT
--     mobile_number INT
--     subscribe BOOLEAN 
--     privacy BOOLEAN
--     location VARCHAR
--     ethnic_heritage VARCHAR
--     gender VARCHAR

-- )

-- CREATE TABLE education_details  
--     qualification_id INT GENERATED ALWAYS AS IDENTITY
--     mentee_id INT REFERENCES mentees (mentee_id)
--     school_name VARCHAR
--     sixth_form_college VARCHAR
--     ucas INT
--     studying_gcse VARCHAR
--     qualification VARCHAR   
--     subjects VARCHAR
--     status VARCHAR

-- CREATE TABLE sector_interests
--     sector_id INT GENERATED ALWAYS AS IDENTITY
--     mentee_id INT REFERENCES mentees (mentee_id)
--     finacial_services BOOLEAN
--     investment_banking BOOLEAN
--     creative BOOLEAN
--     government BOOLEAN
--     marketing_media BOOLEAN
--     hr BOOLEAN
--     real_esate BOOLEAN
--     engineering BOOLEAN
--     law BOOLEAN
--     other BOOLEAN

-- CREATE TABLE circumstances
--     circumstance_id INT GENERATED ALWAYS AS IDENTITY
--     mentee_id INT REFERENCES mentees (mentee_id)
--     local_authority_care BOOLEAN
--     single_parent_household BOOLEAN
--     disability BOOLEAN
--     parents_uni_status BOOLEAN
--     refugee_asylum BOOLEAN
--     free_school_meals BOOLEAN
--     family_caring BOOLEAN
--     parent_carer BOOLEAN




CREATE TABLE user_data (
id SERIAL PRIMARY KEY,
first_name VARCHAR(25),
sur_name VARCHAR(25),
gender VARCHAR(25),
other_gender VARCHAR(25),
dob DATE,
phone INTEGER,
email VARCHAR(50),
password VARCHAR(30),
location VARCHAR(50),
education TEXT[],
sector_one VARCHAR(30),
sector_two VARCHAR(30),
sector_three VARCHAR(30),
criteria TEXT[],
ethnicity TEXT[],
self_describe_text TEXT
);

INSERT INTO user_data (
    first_name,
    sur_name,
    gender,
    other_gender,
    dob,
    phone,
    email,
    password,
    location,
    education,
    sector_one,
    sector_two,
    sector_three,
    criteria,
    ethnicity,
    self_describe_text
) VALUES (
    'John',
    'Doe',
    'Male',
    NULL,
    '1990-01-01',
    1234567890,
    'john.doe@example.com',
    'password123',
    'London',
    ARRAY['Bachelor Degree', 'Master Degree'],
    'Technology',
    'Finance',
    'Healthcare',
    NULL,
    ARRAY['Asian', 'White'],
    'I am a software engineer.'
);