######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_unique_problems_list(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_unique_problems_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-unique-problems --arn $arn "$@"
}