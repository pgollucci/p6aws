p6_aws_clouddirectory_policy_lookup() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory lookup-policy --directory-arn $directory_arn --object-reference $object_reference "$@"
}
