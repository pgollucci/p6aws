######################################################################
#<
#
# Function:
#	p6_aws_shield_drt_access_describe()
#
#>
######################################################################
p6_aws_shield_drt_access_describe() {

    p6_run_read_cmd aws shield describe-drt-access "$@"
}