######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_continuous_backups_update(table_name, point_in_time_recovery_specification)
#
# Arg(s):
#    table_name - 
#    point_in_time_recovery_specification - 
#
#
#>
######################################################################
p6_aws_dynamodb_continuous_backups_update() {
    local table_name="$1"
    local point_in_time_recovery_specification="$2"
    shift 2

    p6_run_write_cmd aws dynamodb update-continuous-backups --table-name $table_name --point-in-time-recovery-specification $point_in_time_recovery_specification "$@"
}