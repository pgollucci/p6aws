p6_aws_alexaforbusiness_default() {
    
    cond_log_and_run aws alexaforbusiness update-profile --is-default "$@"
}

p6_aws_alexaforbusiness_mode_disabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --setup-mode-disabled "$@"
}

p6_aws_alexaforbusiness_enabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --pstn-enabled "$@"
}

