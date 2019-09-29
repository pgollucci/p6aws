p6_aws_ssm_unassociated_targets() {
        local window_id="$1"
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --allow-unassociated-targets "$@"
}

p6_aws_ssm_enabled() {
        local window_id="$1"
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --enabled "$@"
}

p6_aws_ssm_replace() {
        local window_id="$1"
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --replace "$@"
}

