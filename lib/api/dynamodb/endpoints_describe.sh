######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_endpoints_describe()
#
#>
######################################################################
p6_aws_dynamodb_endpoints_describe() {

    p6_run_read_cmd aws dynamodb describe-endpoints "$@"
}