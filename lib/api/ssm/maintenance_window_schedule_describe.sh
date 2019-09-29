######################################################################
#<
#
# Function:
#      = p6_aws_ssm_maintenance_window_schedule_describe()
#
#
#
#>
######################################################################
p6_aws_ssm_maintenance_window_schedule_describe() {

    p6_run_read_cmd aws ssm describe-maintenance-window-schedule "$@"
}