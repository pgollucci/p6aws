######################################################################
#<
#
# Function:
#      = p6_aws_globalaccelerator_logs_enabled()
#
#
#
#>
######################################################################
p6_aws_globalaccelerator_logs_enabled() {
    
    cond_log_and_run aws globalaccelerator update-accelerator-attributes --flow-logs-enabled "$@"
}
