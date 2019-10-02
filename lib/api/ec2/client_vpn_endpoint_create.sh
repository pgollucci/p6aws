######################################################################
#<
#
# Function:
#	p6_aws_ec2_client_vpn_endpoint_create(client_cidr_block, server_certificate_arn, authentication_options, connection_log_options)
#
#  Args:
#	client_cidr_block - 
#	server_certificate_arn - 
#	authentication_options - 
#	connection_log_options - 
#
#>
######################################################################
p6_aws_ec2_client_vpn_endpoint_create() {
    local client_cidr_block="$1"
    local server_certificate_arn="$2"
    local authentication_options="$3"
    local connection_log_options="$4"
    shift 4

    p6_run_write_cmd aws ec2 create-client-vpn-endpoint --client-cidr-block $client_cidr_block --server-certificate-arn $server_certificate_arn --authentication-options $authentication_options --connection-log-options $connection_log_options "$@"
}