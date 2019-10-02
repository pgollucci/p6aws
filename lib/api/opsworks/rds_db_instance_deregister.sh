######################################################################
#<
#
# Function:
#	p6_aws_opsworks_rds_db_instance_deregister(rds_db_instance_arn)
#
#  Args:
#	rds_db_instance_arn - 
#
#>
######################################################################
p6_aws_opsworks_rds_db_instance_deregister() {
    local rds_db_instance_arn="$1"
    shift 1

    p6_run_write_cmd aws opsworks deregister-rds-db-instance --rds-db-instance-arn $rds_db_instance_arn "$@"
}