create table tbl_members(
    userId varchar2(20),
    userPw varchar2(100),
    userName varchar2(20),
    joinDate date default sysdate,
    auth varchar2(20),
    social varchar2(10),
    clubCode varchar2(20));
alter table tbl_members add constraint pk_members primary key(userId);
alter table tbl_members add constraint ck_members_auth check (auth in ('ROLE_ADMIN', 'ROLE_OWNER', 'ROLE_MANAGER', 'ROLE_MEMBER'));
alter table tbl_members add constraint fk_members_clubCode_null foreign key(clubCode) references tbl_clubs(clubCode) on delete set null;
alter table tbl_members modify (auth varchar2(20));

create table tbl_clubs(
    clubName varchar2(20),
    clubCode varchar2(20),
    clubDate date default sysdate,
    ownerId varchar2(20));
alter table tbl_clubs add constraint pk_clubs primary key(clubCode);
alter table tbl_clubs add constraint fk_clubs_ownerId_null foreign key(ownerId) references tbl_members(userId) on delete set null;


create table tbl_announcements (
    annNo number,
    annTitle varchar2(100),
    annContent varchar2(2048),
    annDate date default sysdate,
    annPopup number); -- 0:팝업off, 1:팝업on
alter table tbl_announcements add constraint pk_announcements primary key(annNo);
alter table tbl_announcements add constraint ck_announcements_annStatus check (annStatus in (0,1));


create table tbl_matches(
    matchNo number,
    apposingTeam varchar2(20),
    matchDate date,
    stadium varchar2(20),
    matchStatus number,  -- 0:종료된 경기, 1: 확정된 경기, 2:미확정 경기
    matchRecordStatus number,  -- 0:기록완료, 1: 기록중, 2:미기록
    clubCode varchar2(20));
alter table tbl_matches add constraint pk_matches primary key(matchNo);
alter table tbl_matches add constraint ck_matches_matchStatus check (matchStatus in (0,1,2));
alter table tbl_matches add constraint ck_matches_matchRecordStatus check (matchRecordStatus in (0,1,2));   
alter table tbl_matches add constraint fk_matches_clubCode_cascade foreign key(clubCode) references tbl_clubs(clubCode) on delete cascade;


create table tbl_matchRecord(
    goal number default 0,
    lostPoint number default 0,
    results number(1), -- 1:승리, 0:무, -1:패
    mom varchar2(20),
    comments varchar2(2048),
    matchNo number);
alter table tbl_matchRecord add constraint ck_matcheRecord_results check (results in (-1,0,1));
alter table tbl_matchRecord add constraint fk_mRecord_matchNo_cascade foreign key(matchNo) references tbl_matches(matchNo) on delete cascade;


create table tbl_personalRecord(  -- total = 1(참석) + mom(3) + goals(2) + assists(1) + savess(1) )
    total number default 0,
    mom number default 0,
    goals number default 0,
    assists number default 0,
    saves number default 0,
    userId varchar2(20),
    matchNo number);
alter table tbl_personalRecord add constraint ck_personalRecord_mom check (mom in (0,1));
alter table tbl_personalRecord add constraint fk_pRecord_userId_cascade foreign key(userId) references tbl_members(userId) on delete cascade;
alter table tbl_personalRecord add constraint fk_pRecord_matchNo_null foreign key(matchNo) references tbl_matches(matchNo) on delete set null;


create table tbl_tactics(
    tacticsNo number,
    linup blob,
    tacticsKey varchar2(2048),
    matchNo number); 
alter table tbl_tactics add constraint ck_tactics_tacticsNo check (tacticsNo between 1 and 10);
alter table tbl_tactics add constraint fk_tactics_matchNo_cascade foreign key(matchNo) references tbl_matches(matchNo) on delete cascade;


create table tbl_pollParticipate(
    endDate date,
    matchNo number);
alter table tbl_pollParticipate add constraint fk_pollP_matchNo_cascade foreign key(matchNo) references tbl_matches(matchNo) on delete cascade;


create table tbl_pollMoM(
    endDate date,
    matchNo number);
alter table tbl_pollMoM add constraint fk_pollM_matchNo_cascade foreign key(matchNo) references tbl_matches(matchNo) on delete cascade;


create table tbl_freeBoard(
    boardNo number,
    boardTitle varchar2(100),
    boardContent varchar2(2048),
    boardWriter varchar2(20),
    boardDate date default sysdate,
    boardLike number default 0,
    boardHit number default 0,
    boardTop number default 0, -- 0:상단 미고정, 1:상단 고정
    clubCode varchar2(20));    
alter table tbl_freeBoard add constraint pk_freeboard primary key(boardNo);
alter table tbl_freeBoard add constraint fk_freeboard_clubCode_cascade foreign key(clubCode) references tbl_clubs(clubCode) on delete cascade;
alter table tbl_freeBoard add constraint ck_freeboard_boardTop check (boardTop in (0,1));

create table tbl_reply(
    replyWriter varchar2(20),
    replyContent varchar2(2048),
    replyDate date default sysdate,
    boardNo number);
alter table tbl_reply add constraint fk_reply_boardNo_cascade foreign key(boardNo) references tbl_freeboard(boardNo) on delete cascade;


create table tbl_attach(
    attachName varchar2(100),
    attachType varchar2(10),
    attachContent blob,
    boardNo number);
alter table tbl_attach add constraint fk_attach_boardNo_cascade foreign key(boardNo) references tbl_freeboard(boardNo) on delete cascade;