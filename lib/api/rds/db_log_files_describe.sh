######################################################################
#<
#
# Function:
#	p6_aws_rds_db_log_files_describe(db_instance_identifier)
#
#  Args:
#	db_instance_identifier - 
#
#>
######################################################################
p6_aws_rds_db_log_files_describe() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_read_cmd aws rds describe-db-log-files --db-instance-identifier $db_instance_identifier "$@"
}