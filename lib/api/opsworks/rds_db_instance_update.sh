######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_rds_db_instance_update(rds_db_instance_arn)
#
# Arg(s):
#    rds_db_instance_arn - 
#
#
#>
######################################################################
p6_aws_opsworks_rds_db_instance_update() {
    local rds_db_instance_arn="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-rds-db-instance --rds-db-instance-arn $rds_db_instance_arn "$@"
}