
DROP TABLE IF EXISTS staging_paysim;

CREATE TABLE staging_paysim (
    step_text TEXT,
    type_text TEXT,
    amount_text TEXT,
    nameorig_text TEXT,
    oldbalanceorg_text TEXT,
    newbalanceorig_text TEXT,
    namedest_text TEXT,
    oldbalancedest_text TEXT,
    newbalancedest_text TEXT,
    isfraud_text TEXT,
    isflaggedfraud_text TEXT
);