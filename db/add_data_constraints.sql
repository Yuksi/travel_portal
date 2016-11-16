ALTER TABLE COUNTRIES MODIFY(name NOT NULL);
ALTER TABLE COUNTRIES 
	ADD CONSTRAINT country_name_unique UNIQUE(name);
ALTER TABLE COUNTRIES 
	ADD CONSTRAINT country_not_empty CHECK(TRIM(name) IS NOT NULL); 

ALTER TABLE STATES MODIFY(name NOT NULL);
ALTER TABLE STATES MODIFY(country_id NOT NULL);
ALTER TABLE STATES 
	ADD CONSTRAINT state_not_empty CHECK(TRIM(name) IS NOT NULL); 

ALTER TABLE CITIES MODIFY(name NOT NULL);
ALTER TABLE CITIES MODIFY(state_id NOT NULL);
ALTER TABLE CITIES 
	ADD CONSTRAINT city_not_empty CHECK(TRIM(name) IS NOT NULL);

ALTER TABLE LOCATIONS MODIFY(city_id NOT NULL);

ALTER TABLE SOCIAL_NETWORKS MODIFY(name NOT NULL);
ALTER TABLE SOCIAL_NETWORKS 
	ADD CONSTRAINT soc_net_name_unique UNIQUE(name);
ALTER TABLE SOCIAL_NETWORKS 
	ADD CONSTRAINT soc_net_not_empty CHECK(TRIM(name) IS NOT NULL);

ALTER TABLE USERS MODIFY(first_name NOT NULL);
ALTER TABLE USERS MODIFY(last_name NOT NULL);
ALTER TABLE USERS MODIFY(soc_net_user_id NOT NULL);
ALTER TABLE USERS MODIFY(soc_net_id NOT NULL);
ALTER TABLE USERS
  ADD CONSTRAINT unique_user UNIQUE(soc_net_user_id, soc_net_id);
ALTER TABLE USERS 
	ADD CONSTRAINT first_name_not_empty CHECK(TRIM(first_name) IS NOT NULL);
ALTER TABLE USERS 
	ADD CONSTRAINT last_name_not_empty CHECK(TRIM(last_name) IS NOT NULL);	
  
ALTER TABLE LABELS MODIFY(user_id NOT NULL);
ALTER TABLE LABELS MODIFY(location_id NOT NULL);
ALTER TABLE LABELS MODIFY(coordinate_lat NOT NULL);
ALTER TABLE LABELS MODIFY(coordinate_long NOT NULL);
ALTER TABLE LABELS MODIFY(set_date NOT NULL);

ALTER TABLE ATTACHMENTS MODIFY(user_id NOT NULL);
ALTER TABLE ATTACHMENTS MODIFY(file_path NOT NULL);
ALTER TABLE ATTACHMENTS MODIFY(name NOT NULL);
ALTER TABLE ATTACHMENTS MODIFY(extension NOT NULL);
ALTER TABLE ATTACHMENTS
  ADD CONSTRAINT file_name_unique UNIQUE(file_path, name, extension);

ALTER TABLE COMMENTS MODIFY(user_id NOT NULL);
ALTER TABLE COMMENTS MODIFY(label_id NOT NULL);
ALTER TABLE COMMENTS MODIFY(comment_date NOT NULL);
ALTER TABLE COMMENTS MODIFY(comment_text NOT NULL);
ALTER TABLE COMMENTS
  ADD CONSTRAINT comment_not_empty CHECK(TRIM(comment_text) IS NOT NULL);

ALTER TABLE CATEGORIES MODIFY(name NOT NULL);
ALTER TABLE CATEGORIES
  ADD CONSTRAINT cat_unique UNIQUE(name);
ALTER TABLE CATEGORIES
  ADD CONSTRAINT cat_not_empty CHECK(TRIM(name) IS NOT NULL);

ALTER TABLE TAGS MODIFY(name NOT NULL);
ALTER TABLE TAGS
  ADD CONSTRAINT tag_unique UNIQUE(name);
ALTER TABLE TAGS
  ADD CONSTRAINT tag_not_empty CHECK(TRIM(name) IS NOT NULL);  