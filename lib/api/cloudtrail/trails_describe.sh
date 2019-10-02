######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_trails_describe()
#
#>
######################################################################
p6_aws_cloudtrail_trails_describe() {

    p6_run_read_cmd aws cloudtrail describe-trails "$@"
}