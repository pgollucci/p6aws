######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_input_create(input_name, input_definition)
#
# Arg(s):
#    input_name - 
#    input_definition - 
#
#
#>
######################################################################
p6_aws_iotevents_input_create() {
    local input_name="$1"
    local input_definition="$2"
    shift 2

    p6_run_write_cmd aws iotevents create-input --input-name $input_name --input-definition $input_definition "$@"
}