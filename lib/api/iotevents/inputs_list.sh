######################################################################
#<
#
# Function:
#	p6_aws_iotevents_inputs_list()
#
#>
######################################################################
p6_aws_iotevents_inputs_list() {

    p6_run_read_cmd aws iotevents list-inputs "$@"
}