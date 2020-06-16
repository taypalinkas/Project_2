drop table final_race_db;
drop table final_reason_db;
drop table final_gender_db;
drop table final_result_db;
drop table final_action_db;

create table final_reason_db (
stop_id int primary key,
reason_for_stop text,
reason_for_stopcode text,
reason_for_stop_detail text,
reason_for_stop_explanation text
);

create table final_gender_db (
stop_id int primary key,
gender text
);

create table final_result_db(
stop_id int primary key,
resultkey text,
result text
);

create table final_action_db (
stop_id int primary key,
action text
);

create table final_race_db (
stop_id int primary key,
race text
);

select final_race_db.stop_id, final_race_db.race, final_gender_db.gender, final_reason_db.reason_for_stop, 
final_reason_db.reason_for_stopcode, final_reason_db.reason_for_stop_detail, final_reason_db.reason_for_stop_explanation, 
final_action_db.action, final_result_db.resultkey, final_result_db.result
from final_race_db
join final_gender_db on final_gender_db.stop_id=final_race_db.stop_id
join final_reason_db on final_reason_db.stop_id=final_gender_db.stop_id
join final_action_db on final_action_db.stop_id=final_reason_db.stop_id
join final_result_db on final_result_db.stop_id=final_action_db.stop_id
