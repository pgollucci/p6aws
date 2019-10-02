######################################################################
#<
#
# Function:
#	p6_aws_rds_db_parameter_groups_describe()
#
#>
######################################################################
p6_aws_rds_db_parameter_groups_describe() {

    p6_run_read_cmd aws rds describe-db-parameter-groups "$@"
}