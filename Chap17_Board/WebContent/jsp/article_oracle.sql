create table id_sequence (
	sequence_name varchar2(10) not null,
	next_value number not null,
	constraint sequence_name_pk primary key (sequence_name)
);

insert into id_sequence values ('article', 0);

commit;

create table article (
	article_id number not null,
	group_id number not null,
	sequence_no char(16) not null,
	posting_date date not null,
	read_count number not null,
	writer_name varchar2(20) not null,
	password varchar2(10),
	title varchar2(100),
	content varchar2(4000),
	constraint article_id_pk primary key (article_id)
	);

create sequence article_id_seq;

CREATE INDEX  sequence_no_indx 
     ON article(sequence_no);
