######################################################################
#<
#
# Function:
#      = p6_aws_globalaccelerator_listeners_list(accelerator_arn)
#
# Arg(s):
#    accelerator_arn - 
#
#
#>
######################################################################
p6_aws_globalaccelerator_listeners_list() {
    local accelerator_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator list-listeners --accelerator-arn $accelerator_arn "$@"
}