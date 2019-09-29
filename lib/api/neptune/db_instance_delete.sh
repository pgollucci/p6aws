######################################################################
#<
#
# Function:
#      = p6_aws_neptune_db_instance_delete(db_instance_identifier)
#
# Arg(s):
#    db_instance_identifier - 
#
#
#>
######################################################################
p6_aws_neptune_db_instance_delete() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws neptune delete-db-instance --db-instance-identifier $db_instance_identifier "$@"
}