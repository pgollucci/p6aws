######################################################################
#<
#
# Function:
#      = p6_aws_medialive_input_create()
#
#
#
#>
######################################################################
p6_aws_medialive_input_create() {

    p6_run_write_cmd aws medialive create-input "$@"
}