######################################################################
#<
#
# Function:
#	p6_aws_ds_log_subscriptions_list()
#
#>
######################################################################
p6_aws_ds_log_subscriptions_list() {

    p6_run_read_cmd aws ds list-log-subscriptions "$@"
}