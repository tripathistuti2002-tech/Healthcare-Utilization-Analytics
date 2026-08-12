create database hospital;
use hospital;


#1.Patient and Revenue Analysis 
select Diagnosis,
 count(Patient_ID) as  Total_patient ,
 sum(Treatment_Cost) as  Total_cost 
 from healthcare_data_transformed
 group by Diagnosis 
 order by sum(Treatment_Cost) desc;
 


#2. Insurance  performance
select Diagnosis,
 count(case when Insurance_Coverage = 1 then 1 end) as total_insurance_coverage,
 sum(Treatment_Cost) as total_cost
 from healthcare_data_transformed
 group by Diagnosis;
 

#3. City performance 
select City ,
sum(Treatment_cost) as total_cost 
FROM  healthcare_data_transformed
group by City
order by   total_cost desc;


#4. High-cost top-10  patients
select patient_id, treatment_cost 
from healthcare_data_transformed
order by Treatment_Cost desc 
limit 10;



#5 Hospital Utilization
select Diagnosis ,
 avg(hospital_visits) as avg_hospital_visits 
 from healthcare_data_transformed
 group by diagnosis 
 order by avg(hospital_Visits) desc;
 
 
 #6 . Insurance coverage rate 
 select diagnosis ,
  count(case when Insurance_coverage =1 then 1 end )/count(insurance_coverage)as insurance_coverage_rate 
  from healthcare_data_transformed
  group by Diagnosis
  order by Insurance_Coverage_rate desc;
  
  # 7 . Ranking challenge (treatment cost)
  select Diagnosis,
  sum(Treatment_Cost)as total_treatment_cost, 
  rank()over(
              order by sum(Treatment_Cost) desc ) as cost_rank
from healthcare_data_transformed
group by Diagnosis
order by cost_rank;




                
 
 
 #8 - Repeat hospital visits 
 select Diagnosis, 
 count(Patient_id) as high_utilization_patients
 from healthcare_data_transformed
  where hospital_visits>5 
  group by Diagnosis;
  
  
  #9. Business Recommendation (diagnoses % contribution)
  select diagnosis ,
  round(sum(Treatment_Cost)*100/(select sum(treatment_cost) from healthcare_data_transformed),3
  ) as cost_percentage 
  from  healthcare_data_transformed
  group by diagnosis
  order by cost_percentage desc;
  
  
  #10 cost vs utilization
  select hospital_visits_group,
  avg(Hospital_Visits) as avg_hospital_visits,
  count(patient_id) as total_patient,
  avg(treatment_cost) as avg_cost,
  sum(treatment_cost) as total_cost 
  from healthcare_data_transformed
  group by Hospital_Visits_group
order by avg_hospital_Visits desc;








