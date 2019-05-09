aws_amplify_branch_auto_build() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-branch-auto-build "$@"
}

aws_amplify_basic_auth() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-basic-auth "$@"
}

