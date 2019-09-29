######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_instance_start(db_instance_identifier)
#
# Arg(s):
#    db_instance_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_instance_start() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds start-db-instance --db-instance-identifier $db_instance_identifier "$@"
}