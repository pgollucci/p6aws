######################################################################
#<
#
# Function:
#      = p6_aws_medialive_inputs_list()
#
#
#
#>
######################################################################
p6_aws_medialive_inputs_list() {

    p6_run_read_cmd aws medialive list-inputs "$@"
}