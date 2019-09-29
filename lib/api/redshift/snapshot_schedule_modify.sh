######################################################################
#<
#
# Function:
#      = p6_aws_redshift_snapshot_schedule_modify(schedule_identifier, schedule_definitions)
#
# Arg(s):
#    schedule_identifier - 
#    schedule_definitions - 
#
#
#>
######################################################################
p6_aws_redshift_snapshot_schedule_modify() {
    local schedule_identifier="$1"
    local schedule_definitions="$2"
    shift 2

    p6_run_write_cmd aws redshift modify-snapshot-schedule --schedule-identifier $schedule_identifier --schedule-definitions $schedule_definitions "$@"
}