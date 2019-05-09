p6_aws_kms_key_policies_list() {
    local key_id="$1"
    shift 1

    p6_run_read_cmd aws kms list-key-policies --key-id $key_id "$@"
}
