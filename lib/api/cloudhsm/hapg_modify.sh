######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsm_hapg_modify(hapg_arn)
#
# Arg(s):
#    hapg_arn - 
#
#
#>
######################################################################
p6_aws_cloudhsm_hapg_modify() {
    local hapg_arn="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm modify-hapg --hapg-arn $hapg_arn "$@"
}