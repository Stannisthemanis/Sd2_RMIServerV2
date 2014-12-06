SELECT * FROM action_item;
SELECT * FROM agenda_item;
SELECT * FROM invite;
SELECT * FROM meeting;
SELECT * FROM message;
SELECT * FROM user1;
SELECT * FROM user_group;
SELECT * FROM user_group_user;
SELECT * FROM USERS_ON_CHAT;

INSERT INTO user1 (username,password,dob) VALUES ('Diogo','root',TIMESTAMP('1984-02-11'));
INSERT INTO user1 (username,password,dob) VALUES ('Ricardo','root',TIMESTAMP('1994-01-19'));
INSERT INTO user1 (username,password,dob) VALUES ('root','root',TIMESTAMP('1988-04-21'));



INSERT INTO meeting (title,outcome,id_user,local,s_date,e_date,duration) VALUES ('pastMeeting','responsaveis',1,'sala e4.1',TIMESTAMP('2013-11-14 10:20:00'),TIMESTAMP('2014-11-13 14:20:00'),240);
INSERT INTO agenda_item (item_to_discuss,id_meeting) VALUES ('Any Other Bussiness',1);
INSERT INTO invite (id_meeting, id_user, decision) VALUES(1,2,'Yes');
INSERT INTO invite (id_meeting, id_user, decision) VALUES(1,2,'Yes');
INSERT INTO message (id_agenda_item, id_user, mdate, messages) VALUES(1,1,TIMESTAMP('2014-11-14 11:10:00'),'ola');
INSERT INTO message (id_agenda_item, id_user, mdate, messages) VALUES(1,2,TIMESTAMP('2014-11-14 11:20:00'),'oi');
INSERT INTO message (id_agenda_item, id_user, mdate, messages) VALUES(1,1,TIMESTAMP('2014-11-14 11:30:00'),'1');
INSERT INTO message (id_agenda_item, id_user, mdate, messages) VALUES(1,2,TIMESTAMP('2014-11-14 11:40:00'),'2');
INSERT INTO message (id_agenda_item, id_user, mdate, messages) VALUES(1,1,TIMESTAMP('2014-11-14 11:50:00'),'3');
INSERT INTO action_item (name, id_user, completed, id_meeting) VALUES ('action item 1',1,'To Be Done',1);
INSERT INTO action_item (name, id_user, completed, id_meeting) VALUES ('action item 2',1,'Done',1);


INSERT INTO meeting (title,outcome,id_user,local,s_date,e_date,duration) VALUES ('currentMeeting','responsaveis',1,'sala e4.1',TIMESTAMP('2014-11-23 10:20:00'),TIMESTAMP('2014-12-23 14:20:00'),240);
INSERT INTO agenda_item (item_to_discuss,id_meeting) VALUES ('Any Other Bussiness',2);
INSERT INTO invite (id_meeting, id_user) VALUES(2,2);

INSERT INTO meeting (title,outcome,id_user,local,s_date,e_date,duration) VALUES ('upcumingMeeting','responsaveis',1,'sala e4.1',TIMESTAMP('2015-11-14 10:20:00'),TIMESTAMP('2015-11-14 14:20:00'),240);
INSERT INTO agenda_item (item_to_discuss,id_meeting) VALUES ('Any Other Bussiness',3);
INSERT INTO invite (id_meeting, id_user) VALUES(3,2);



