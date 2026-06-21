CREATE TABLE celestial_bodies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    known_fact TEXT
);

INSERT INTO celestial_bodies (name, type, known_fact) VALUES
('Europa', 'Moon', 'Has a subsurface ocean of liquid water.'),
('Kepler-186f', 'Exoplanet', 'First Earth-size planet found in the habitable zone.'),
('TRAPPIST-1e', 'Exoplanet', 'Tidally locked, meaning one side is always day and the other always night.');
