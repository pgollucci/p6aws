######################################################################
#<
#
# Function:
#	p6_aws_directconnect_lags_describe()
#
#>
######################################################################
p6_aws_directconnect_lags_describe() {

    p6_run_read_cmd aws directconnect describe-lags "$@"
}