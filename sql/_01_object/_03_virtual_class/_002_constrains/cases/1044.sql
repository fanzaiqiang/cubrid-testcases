-- [er] create vclass using Constraints  DEFAULT,not null and SHARED 

create vclass t1 (
c1 int not null  SHARED 9 DEFAULT 8 
);

drop t1;