######################################################################
#<
#
# Function:
#	p6_aws_ses_send_statistics_get()
#
#>
######################################################################
p6_aws_ses_send_statistics_get() {

    p6_run_read_cmd aws ses get-send-statistics "$@"
}