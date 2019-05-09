p6_aws_eks_update_describe() {
    local name="$1"
    local update_id="$2"
    shift 2

    p6_run_read_cmd aws eks describe-update --name $name --update-id $update_id "$@"
}
