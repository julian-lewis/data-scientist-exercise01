CREATE TABLE flattened_table 
AS SELECT r.id,
r.age,
r.workclass_id,
wc.name AS 'workclass_name',
r.education_level_id,
el.name AS 'education_level_name',
r.education_num,
r.marital_status_id,
ms.name AS 'marital_status_name',
r.occupation_id,
o.name AS 'occupation_name',
r.relationship_id,
rs.name AS 'relationship_name',
r.race_id,
rc.name AS 'race_name',
r.sex_id,
s.name AS 'sex_name',
r.capital_gain,
r.capital_loss,
r.hours_week,
r.country_id,
c.name AS 'country_name',
r.over_50k

FROM RECORDS r

LEFT JOIN workclasses wc ON r.workclass_id == wc.id

LEFT JOIN education_levels el ON r.education_level_id == el.id

LEFT JOIN marital_statuses ms ON r.marital_status_id == ms.id

LEFT JOIN occupations o ON r.occupation_id == o.id

LEFT JOIN relationships rs ON r.relationship_id == rs.id

LEFT JOIN races rc ON r.race_id == rc.id

LEFT JOIN sexes s ON r.sex_id == s.id

LEFT JOIN countries c ON r.country_id == c.id;
