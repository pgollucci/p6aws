######################################################################
#<
#
# Function:
#	p6_aws_redshift_snapshot_schedules_describe()
#
#>
######################################################################
p6_aws_redshift_snapshot_schedules_describe() {

    p6_run_read_cmd aws redshift describe-snapshot-schedules "$@"
}