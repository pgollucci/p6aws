######################################################################
#<
#
# Function:
#	p6_aws_securityhub_hub_describe()
#
#>
######################################################################
p6_aws_securityhub_hub_describe() {

    p6_run_read_cmd aws securityhub describe-hub "$@"
}