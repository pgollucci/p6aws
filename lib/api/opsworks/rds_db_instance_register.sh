######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_rds_db_instance_register(stack_id, rds_db_instance_arn, db_user, db_password)
#
# Arg(s):
#    stack_id - 
#    rds_db_instance_arn - 
#    db_user - 
#    db_password - 
#
#
#>
######################################################################
p6_aws_opsworks_rds_db_instance_register() {
    local stack_id="$1"
    local rds_db_instance_arn="$2"
    local db_user="$3"
    local db_password="$4"
    shift 4

    p6_run_write_cmd aws opsworks register-rds-db-instance --stack-id $stack_id --rds-db-instance-arn $rds_db_instance_arn --db-user $db_user --db-password $db_password "$@"
}