######################################################################
#<
#
# Function:
#	p6_aws_neptune_db_instance_reboot(db_instance_identifier)
#
#  Args:
#	db_instance_identifier - 
#
#>
######################################################################
p6_aws_neptune_db_instance_reboot() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws neptune reboot-db-instance --db-instance-identifier $db_instance_identifier "$@"
}