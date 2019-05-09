p6_aws_cloudhsm_hapg_describe() {
    local hapg_arn="$1"
    shift 1

    p6_run_read_cmd aws cloudhsm describe-hapg --hapg-arn $hapg_arn "$@"
}
