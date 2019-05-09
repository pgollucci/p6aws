aws_alexaforbusiness_default() {
    
    cond_log_and_run aws alexaforbusiness update-profile --is-default "$@"
}

aws_alexaforbusiness_mode_disabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --setup-mode-disabled "$@"
}

aws_alexaforbusiness_enabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --pstn-enabled "$@"
}

