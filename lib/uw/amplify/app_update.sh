p6_aws_amplify_branch_auto_build() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-branch-auto-build "$@"
}

p6_aws_amplify_basic_auth() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-basic-auth "$@"
}

p6_aws_amplify_auto_branch_creation() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-auto-branch-creation "$@"
}

