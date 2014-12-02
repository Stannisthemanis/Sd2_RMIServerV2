SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE meeting;
DROP TABLE user_group_user;
DROP TABLE invite;
DROP TABLE meeting_user_group;
DROP TABLE action_item;
DROP TABLE users_on_chat;
DROP TABLE agenda_item;
DROP TABLE message;
DROP TABLE user_group;
DROP TABLE user1;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE user1( 
    id_user        INT         NOT NULL AUTO_INCREMENT,
    username       varchar(20) NOT NULL,
    password       varchar(20) NOT NULL, 
    dob            DATE        NOT NULL,
    PRIMARY KEY(id_user)
);

CREATE TABLE user_group( 
    id_user_group  INT          NOT NULL AUTO_INCREMENT,
    group_name     varchar(20)  NOT NULL,
    PRIMARY KEY(id_user_group)
);

CREATE TABLE user_group_user( 
    id_user_group     INT NOT NULL,
    id_user           INT NOT NULL,
    FOREIGN KEY (id_user_group)    REFERENCES user_group(id_user_group),
    FOREIGN KEY (id_user)          REFERENCES user1(id_user),
    PRIMARY KEY (id_user_group,id_user)
);

CREATE TABLE meeting(
    id_meeting        INT           NOT NULL AUTO_INCREMENT, 
    title             VARCHAR(20)   NOT NULL,
    outcome           VARCHAR(20)   NOT NULL,
    id_user           INT NOT NULL,
    local             VARCHAR(20)   NOT NULL,
    s_date            DATETIME      NOT NULL,
    e_date            DATETIME      NOT NULL,
    duration          INT           NOT NULL,
    FOREIGN KEY(id_user)            REFERENCES user1(id_user),
    PRIMARY KEY(id_meeting)
);

CREATE TABLE agenda_item( 
    id_agenda_item       INT          NOT NULL AUTO_INCREMENT,
    id_meeting           INT          NOT NULL,
    item_to_discuss      varchar(20)  NOT NULL,
    key_decision         varchar(20)  DEFAULT NULL,  
    FOREIGN KEY(id_meeting)     REFERENCES meeting(id_meeting),
    PRIMARY KEY(id_agenda_item)
);

CREATE TABLE message(   
    id_message      INT            NOT NULL AUTO_INCREMENT,
    id_agenda_item  INT            NOT NULL,
    id_user         INT            NOT NULL,
    mdate           DATETIME       NOT NULL, 
    messages        VARCHAR(1000)  NOT NULL, 
    FOREIGN KEY(id_agenda_item) REFERENCES agenda_item(id_agenda_item),
    FOREIGN KEY(id_user)        REFERENCES user1(id_user),
    PRIMARY KEY(id_message)
);

CREATE TABLE action_item( 
    id_action_item   INT            NOT NULL AUTO_INCREMENT,
    id_meeting       INT            NOT NULL,
    name             VARCHAR(20)    NOT NULL,
    id_user          INT            NOT NULL,
    completed        VARCHAR(20)    DEFAULT 'To Be Done'    NOT NULL,
    FOREIGN KEY(id_meeting)     REFERENCES meeting(id_meeting),
    FOREIGN KEY(id_user)        REFERENCES user1(id_user),
    PRIMARY KEY(id_action_item)
);

CREATE TABLE invite( 
    id_invite      INT          NOT NULL AUTO_INCREMENT,  
    id_meeting     INT          NOT NULL,
    id_user        INT          NOT NULL,
    decision       VARCHAR(20)  DEFAULT 'unread',
    FOREIGN KEY(id_meeting) REFERENCES meeting(id_meeting),
    FOREIGN KEY(id_user) REFERENCES user1(id_user),
    PRIMARY KEY(id_invite)
);

CREATE TABLE users_on_chat( 
    id_user                 INT NOT NULL,
    id_agenda_item          INT NOT NULL,
    FOREIGN KEY(id_user)        REFERENCES user1(id_user),
    FOREIGN KEY(id_agenda_item) REFERENCES agenda_item(id_agenda_item),
    PRIMARY KEY(id_user, id_agenda_item)
);

CREATE TABLE meeting_user_group( 
    id_meeting       INT NOT NULL,
    id_user_group    INT NOT NULL,
    FOREIGN KEY(id_meeting) REFERENCES meeting(id_meeting),
    FOREIGN KEY(id_user_group) REFERENCES user_group(id_user_group)
);






















