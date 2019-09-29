######################################################################
#<
#
# Function:
#      = p6_aws_rds_event_subscriptions_describe()
#
#
#
#>
######################################################################
p6_aws_rds_event_subscriptions_describe() {

    p6_run_read_cmd aws rds describe-event-subscriptions "$@"
}