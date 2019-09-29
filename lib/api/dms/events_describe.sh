######################################################################
#<
#
# Function:
#      = p6_aws_dms_events_describe()
#
#
#
#>
######################################################################
p6_aws_dms_events_describe() {

    p6_run_read_cmd aws dms describe-events "$@"
}