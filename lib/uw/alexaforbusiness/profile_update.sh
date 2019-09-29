######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_default()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_default() {
    
    cond_log_and_run aws alexaforbusiness update-profile --is-default "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_mode_disabled()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_mode_disabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --setup-mode-disabled "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_enabled()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_enabled() {
    
    cond_log_and_run aws alexaforbusiness update-profile --pstn-enabled "$@"
}
