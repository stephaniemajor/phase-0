<!--1. Select all  data for all states-->
<p>1- SELECT * FROM states;</p>
<!--2. Select all from regions-->
<p>2- SELECT * FROM refions;</p>
<!--3. Select the state_name and population for all states.-->
<p>3- SELECT state_name,population FROM states;</p>
<!--4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.-->
<p>4- SELECT state_name,population FROM states ORDER BY population DESC ;</p>
<!--5. Select the state_name for the states in region 7.-->
<p>5- SELECT state_name FROM states WHERE region_id = 7 ;</p>
<!--6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.-->
<p>6- SELECT state_name,population_density FROM states WHERE population_density > 50 ORDER BY population_density;</p>  
<!--7. Select the state_name for states with a population between 1 million and 1.5 million people.-->
<p>7- SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;</p> 
<!--8. Select the state_name and region_id for states ordered by region in ascending order.-->
<p>8- SELECT state_name,region_id FROM states ORDER BY region_id ;  </p>
<!--9. Select the region_name for the regions with "Central" in the name.-->
<p>9- SELECT region_name FROM regions WHERE region_name LIKE ("% Central");  </p>
<!--10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name.-->
<p>10 - SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON states.region_id= regions.id ORDER BY region_id ASC;</p>
<img src="Screenshot 2016-02-19 07.06.27.png" alt="schema image">;
<p>	•	What are databases for?</p>
<p>To collect and keep data in an organized manner. The data can be modified, updated, appended with new data, deleted, etc.It is a repository. Usually, a database is made of several tables and these tables have several columns and rows. The rows should be unique.</p>
<p>	•	What is a one-to-many relationship?</p>
<p>The relationship is between tables within a database. In one table, you have a unique data which is related to several data in another table. For example, one region in a regions table can have several states.</p>
<p>	•	What is a primary key? What is a foreign key? How can you determine which is which?</p>
<p>A primary key is a unique identifier within a table that can describe the identity of that table. A foreign key is a primary key from another table. In the other table, it is unique but can not be used to specifically refer to it. The primary key and foreign key permits linkage between tables. For example, a table could be for a student. Its primary key is the student id, the other fields would be for his/her name, age, address, and the courses taken. Other tables could be about each course. The primary key of a course table would be a course id.The table for the course would have several students id in it. The student id in the course table would be the foreign key. The same student id is the primary key of the student table. This is helpful to keep the course tables lean, meaning, the course table doesn’t need to carry info about the students. The same could be said about the student tables, with specific tables for each courses, the student tables don’t need to  keep all the details about the courses.</p>
<p>	•	How can you select information out of a SQL database? What are some general guidelines for that?</p>
<p>By using the command SELECT. the commands in SQL are in uppercases and the tables in lowercases. If you need to link two tables, you need to instruct what is the primary key and the foreign key.</p>



