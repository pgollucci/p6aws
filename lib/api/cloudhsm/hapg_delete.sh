######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsm_hapg_delete(hapg_arn)
#
# Arg(s):
#    hapg_arn - 
#
#
#>
######################################################################
p6_aws_cloudhsm_hapg_delete() {
    local hapg_arn="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm delete-hapg --hapg-arn $hapg_arn "$@"
}