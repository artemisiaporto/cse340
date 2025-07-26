--Add Tony Stark client info
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
--Alter Tony's account type
UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony'
    AND account_lastname = 'Stark';
--Delete Tony Stark info
DELETE FROM account
WHERE account_firstname = 'Tony'
    AND account_lastname = 'Stark';
--Updating "GM Hummer" record
UPDATE inventory
SET inv_description = REPLACE(
        inv_description,
        'the small interiors',
        'a huge interior'
    )
WHERE inv_make = 'GM'
    AND inv_model = 'Hummer';
--Inner join with inventory and classification tables
SELECT inventory.inv_make,
    inventory.inv_model,
    classification.classification_name
FROM inventory
    INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE inventory.classification_id = 2;
--Updating inv image and thumbnail
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images', '/images/vehicles'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images', '/images/vehicles');