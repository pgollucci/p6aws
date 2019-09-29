######################################################################
#<
#
# Function:
#      = p6_aws_codestar_project_describe(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_codestar_project_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws codestar describe-project --id $id "$@"
}