p6_aws_clouddirectory_policy_attach() {
    local directory_arn="$1"
    local policy_reference="$2"
    local object_reference="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory attach-policy --directory-arn $directory_arn --policy-reference $policy_reference --object-reference $object_reference "$@"
}
