CREATE TABLE 테이블1(
  id CHAR(10) NOT NULL PRIMARY KEY
);
CREATE TABLE 테이블2(
  테이블1 CHAR(10),
  FOREIGN KEY (테이블1) REFERENCES 테이블1(id)
);

ALTER class 테이블2 drop FOREIGN KEY  fk_테이블2_테이블1;
ALTER TABLE 테이블1 drop PRIMARY KEY ;

drop class 테이블2;
drop class 테이블1;