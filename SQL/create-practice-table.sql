-- Start Pl/SQL Block
begin;
  -- Create Table
  create table PRACTICE_SUMMARY (
      id            integer         CONSTRAINT  summary_id_pk   PRIMARY KEY,
      instrument    varchar(50),
      length        integer         NOT NULL,
      date          date            NOT NULL
  );

  -- Insert Test Data
  insert into practice_summary values (1, 'Trumpet', 60, '2020-11-23');
  commit;
end;
