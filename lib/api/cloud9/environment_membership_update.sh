p6_aws_cloud9_environment_membership_update() {
    local environment_id="$1"
    local user_arn="$2"
    local permissions="$3"
    shift 3

    p6_run_write_cmd aws cloud9 update-environment-membership --environment-id $environment_id --user-arn $user_arn --permissions $permissions "$@"
}
