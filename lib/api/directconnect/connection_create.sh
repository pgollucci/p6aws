######################################################################
#<
#
# Function:
#	p6_aws_directconnect_connection_create(location, bandwidth, connection_name)
#
#  Args:
#	location - 
#	bandwidth - 
#	connection_name - 
#
#>
######################################################################
p6_aws_directconnect_connection_create() {
    local location="$1"
    local bandwidth="$2"
    local connection_name="$3"
    shift 3

    p6_run_write_cmd aws directconnect create-connection --location $location --bandwidth $bandwidth --connection-name $connection_name "$@"
}