p6_aws_iam_instance_profile_create() {
    local instance_profile_name="$1"
    shift 1

    p6_run_write_cmd aws iam create-instance-profile --instance-profile-name $instance_profile_name "$@"
}
