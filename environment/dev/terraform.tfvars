aws_region = "ca-central-1"
project = "totira"
env = "dev1"
vpc_cidr_block = "10.11.0.0/16"
az1 = "ca-central-1a"
az2 = "ca-central-1b"
dmz_subnet_cidr_block = ["10.11.1.0/24","10.11.2.0/24"]
app_subnet_cidr_block = ["10.11.11.0/24","10.11.12.0/24"]
db_subnet_cidr_block = ["10.11.21.0/24","10.11.22.0/24"]
eks_instance_type     =  "t3.medium"
bastion_instance_type =  "t2.micro"
desired_size = 2
max_size = 2
min_size = 1

#Document DB Parameters
docdb_engine = "docdb"
docdb_userid = "totirastage"
docdb_passwd = "totirastage"
cluster_family = "docdb4.0"
tls = "disabled"
docdb-instance = "db.t3.medium"

#Mysql DB Parameters

mysqldb_engine = "mysql"
mysqldb_engine_version = "8.0"
mysqldb_instance_count = "1"
mysqldb_userid = "totirastage"
mysqldb_passwd = "totirastage"
mysql_cluster_family = "docdb4.0"
mysqldb-instance = "db.t3.micro"
