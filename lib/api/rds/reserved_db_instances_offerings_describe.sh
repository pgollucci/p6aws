######################################################################
#<
#
# Function:
#	p6_aws_rds_reserved_db_instances_offerings_describe()
#
#>
######################################################################
p6_aws_rds_reserved_db_instances_offerings_describe() {

    p6_run_read_cmd aws rds describe-reserved-db-instances-offerings "$@"
}