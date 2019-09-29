######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_instance_reboot(db_instance_identifier)
#
# Arg(s):
#    db_instance_identifier - 
#
#
#>
######################################################################
p6_aws_docdb_db_instance_reboot() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws docdb reboot-db-instance --db-instance-identifier $db_instance_identifier "$@"
}