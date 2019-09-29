######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_tests_list(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_tests_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-tests --arn $arn "$@"
}