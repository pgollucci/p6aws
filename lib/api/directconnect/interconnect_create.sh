######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_interconnect_create(interconnect_name, bandwidth, location)
#
# Arg(s):
#    interconnect_name - 
#    bandwidth - 
#    location - 
#
#
#>
######################################################################
p6_aws_directconnect_interconnect_create() {
    local interconnect_name="$1"
    local bandwidth="$2"
    local location="$3"
    shift 3

    p6_run_write_cmd aws directconnect create-interconnect --interconnect-name $interconnect_name --bandwidth $bandwidth --location $location "$@"
}