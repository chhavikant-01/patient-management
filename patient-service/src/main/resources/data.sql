-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

-- Insert well-known UUIDs for specific patients
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'Thomas Anderson',
       'thomas.anderson@email.com',
       '742 Matrix Ave, Seattle',
       '1983-03-21',
       '2024-02-15'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Rachel Green',
       'rachel.green@email.com',
       '90 Bedford St, New York',
       '1988-05-12',
       '2024-01-05'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Peter Parker',
       'peter.parker@email.com',
       '20 Ingram St, Queens',
       '1995-08-10',
       '2023-12-20'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Diana Prince',
       'diana.prince@email.com',
       '1984 Paradise Island Dr',
       '1985-07-01',
       '2023-11-30'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Bruce Wayne',
       'bruce.wayne@email.com',
       '1007 Mountain Drive, Gotham',
       '1980-02-19',
       '2024-01-15'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174004');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Tony Stark',
       'tony.stark@email.com',
       '10880 Malibu Point, Malibu',
       '1975-05-29',
       '2023-10-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Leia Organa',
       'leia.organa@email.com',
       '123 Royal Palace, Alderaan',
       '1990-05-04',
       '2023-09-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'Harry Potter',
       'harry.potter@email.com',
       '4 Privet Drive, Surrey',
       '1992-07-31',
       '2023-08-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Katniss Everdeen',
       'katniss.everdeen@email.com',
       '12 Victors Village, District 12',
       '1994-05-08',
       '2024-02-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'Luke Skywalker',
       'luke.skywalker@email.com',
       'Lars Homestead, Tatooine',
       '1990-05-04',
       '2023-07-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Hermione Granger',
       'hermione.granger@email.com',
       '15 Heathgate, Hampstead Garden',
       '1992-09-19',
       '2023-06-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'James Bond',
       'james.bond@email.com',
       '007 Secret Service Rd, London',
       '1970-11-11',
       '2024-01-07'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Ellen Ripley',
       'ellen.ripley@email.com',
       'Nostromo Ship, Space Station',
       '1978-01-07',
       '2023-12-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Indiana Jones',
       'indiana.jones@email.com',
       'Marshall College, Connecticut',
       '1965-07-01',
       '2023-05-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Sarah Connor',
       'sarah.connor@email.com',
       '123 Hidden Bunker, Mexico',
       '1982-11-13',
       '2024-02-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');
