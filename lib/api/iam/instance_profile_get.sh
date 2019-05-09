p6_aws_iam_instance_profile_get() {
    local instance_profile_name="$1"
    shift 1

    p6_run_read_cmd aws iam get-instance-profile --instance-profile-name $instance_profile_name "$@"
}
