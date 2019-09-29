######################################################################
#<
#
# Function:
#      = p6_aws_rds_events_describe()
#
#
#
#>
######################################################################
p6_aws_rds_events_describe() {

    p6_run_read_cmd aws rds describe-events "$@"
}