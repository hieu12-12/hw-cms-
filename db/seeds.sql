-- Clear existing data before inserting new records
TRUNCATE TABLE employee RESTART IDENTITY CASCADE;
TRUNCATE TABLE role RESTART IDENTITY CASCADE;
TRUNCATE TABLE department RESTART IDENTITY CASCADE;

-- Insert departments (Make sure IDs match referenced values)
INSERT INTO department (name) VALUES
    ('Engineering'), -- ID: 1
    ('Sales'),       -- ID: 2
    ('Finance'),     -- ID: 3
    ('Legal');       -- ID: 4

-- Insert roles (Make sure department_id exists)
INSERT INTO role (title, salary, department_id) VALUES
    ('Software Engineer', 85000, 1),
    ('Lead Engineer', 125000, 1),
    ('Sales Representative', 65000, 2),
    ('Sales Manager', 100000, 2),
    ('Accountant', 75000, 3),
    ('Legal Counsel', 95000, 4);

-- Insert employees (Make sure role_id exists)
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Liam', 'Anderson', 2, NULL),    -- Lead Engineer (ID: 2)
    ('Olivia', 'Martinez', 1, 1),     -- Software Engineer (ID: 1, reports to Liam)
    ('Noah', 'Garcia', 4, NULL),      -- Sales Manager (ID: 4)
    ('Emma', 'Rodriguez', 3, 3),      -- Sales Representative (ID: 3, reports to Noah)
    ('Mason', 'Lee', 5, NULL),        -- Accountant (ID: 5)
    ('Ava', 'Thompson', 6, NULL);     -- Legal Counsel (ID: 6)
