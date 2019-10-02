######################################################################
#<
#
# Function:
#	p6_aws_gamelift_vpc_peering_authorizations_describe()
#
#>
######################################################################
p6_aws_gamelift_vpc_peering_authorizations_describe() {

    p6_run_read_cmd aws gamelift describe-vpc-peering-authorizations "$@"
}